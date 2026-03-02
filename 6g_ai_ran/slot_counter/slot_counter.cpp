/*
 * slot_counter.cpp — Autonomous NR Slot/Symbol Counter for 6G RAN DU
 *
 * ── Design overview ──────────────────────────────────────────────────────────
 *
 *  Three cascaded counters driven by pl_clk0 at 300MHz:
 *
 *    phase_cnt   : counts clock cycles within the current symbol
 *                  resets at CYCLES_EXTENDED_SYM (sym 0) or CYCLES_NORMAL_SYM
 *    symbol_cnt  : 0–13, increments when phase_cnt rolls over
 *    slot_cnt    : 0–79, increments when symbol_cnt rolls over from 13→0
 *
 *  This is an ap_ctrl_none function — it runs as a free-running IP with no
 *  ap_start/ap_done handshake. HLS generates a purely combinational/registered
 *  datapath with no FSM overhead.
 *
 * ── Override logic ───────────────────────────────────────────────────────────
 *
 *  When gpio_override=1, the output is taken from the GPIO pins and the
 *  internal counters are reset to match, so releasing override continues
 *  seamlessly from the PS-specified position.
 *
 * ── Sync/reset ───────────────────────────────────────────────────────────────
 *
 *  When sync_req=1 (written via AXI-Lite), all counters are immediately
 *  reset to (sync_symbol, sync_slot, phase=0). This allows the PS to align
 *  the counter to a frame boundary (e.g. triggered by a PPS pulse or the
 *  first received OFDM symbol boundary detected in software).
 *
 * ── HLS implementation note ──────────────────────────────────────────────────
 *
 *  Because this is ap_ctrl_none with static local variables, HLS synthesises
 *  it as a registered combinational block — the static vars become flip-flops
 *  that update every clock cycle. This is the correct hardware behaviour for
 *  a free-running counter.
 *
 *  The function is intentionally a single combinational pass (no loops) so
 *  HLS II=1 with zero pipeline fill latency — the outputs update every cycle.
 */

#include "slot_counter.h"

void slot_counter_top(
    ap_uint<4>  &symbol_num,
    ap_uint<7>  &slot_num,
    ap_uint<1>  gpio_override,
    ap_uint<4>  gpio_symbol_num,
    ap_uint<7>  gpio_slot_num,
    ap_uint<1>  sync_req,
    ap_uint<4>  sync_symbol,
    ap_uint<7>  sync_slot,
    ap_uint<4>  &symbol_num_out,
    ap_uint<7>  &slot_num_out)
{
#pragma HLS INTERFACE ap_none    port=symbol_num
#pragma HLS INTERFACE ap_none    port=slot_num
#pragma HLS INTERFACE ap_none    port=gpio_override
#pragma HLS INTERFACE ap_none    port=gpio_symbol_num
#pragma HLS INTERFACE ap_none    port=gpio_slot_num
#pragma HLS INTERFACE s_axilite  port=sync_req       bundle=CTRL
#pragma HLS INTERFACE s_axilite  port=sync_symbol    bundle=CTRL
#pragma HLS INTERFACE s_axilite  port=sync_slot      bundle=CTRL
#pragma HLS INTERFACE s_axilite  port=symbol_num_out bundle=CTRL
#pragma HLS INTERFACE s_axilite  port=slot_num_out   bundle=CTRL
#pragma HLS INTERFACE s_axilite  port=return         bundle=CTRL
#pragma HLS INTERFACE ap_ctrl_none port=return

    // ── Persistent state — synthesised as flip-flops ──────────────────────────
    static ap_uint<12> phase_cnt  = 0;   // cycle within symbol (0..2686)
    static ap_uint<4>  symbol_cnt = 0;   // symbol within slot  (0..13)
    static ap_uint<7>  slot_cnt   = 0;   // slot within frame   (0..79)
#pragma HLS RESET variable=phase_cnt
#pragma HLS RESET variable=symbol_cnt
#pragma HLS RESET variable=slot_cnt

    // ── Sync / override logic ─────────────────────────────────────────────────
    if (sync_req) {
        // PS-initiated resync to frame boundary
        phase_cnt  = 0;
        symbol_cnt = sync_symbol;
        slot_cnt   = sync_slot;
    } else if (gpio_override) {
        // PS GPIO override — snap counters to GPIO values
        phase_cnt  = 0;
        symbol_cnt = gpio_symbol_num;
        slot_cnt   = gpio_slot_num;
    } else {
        // ── Free-running counter update ───────────────────────────────────────
        // Symbols 0 and 7 have extended CP per TS 38.211 Table 4.3.2-1.
        // All other symbols have normal CP.
        // Remainder of 8 cycles (37500 - 14×2678) distributed as 4 cycles
        // extra on each extended symbol: 2678+4 = 2682.
        ap_uint<12> sym_limit = ((symbol_cnt == 0) || (symbol_cnt == 7))
                                ? (ap_uint<12>)CYCLES_EXTENDED_SYM
                                : (ap_uint<12>)CYCLES_NORMAL_SYM;

        if (phase_cnt >= sym_limit - 1) {
            // Symbol boundary — advance symbol
            phase_cnt = 0;
            if (symbol_cnt == SYMBOLS_PER_SLOT - 1) {
                // Slot boundary — advance slot
                symbol_cnt = 0;
                slot_cnt   = (slot_cnt == SLOTS_PER_FRAME - 1)
                             ? (ap_uint<7>)0
                             : (ap_uint<7>)(slot_cnt + 1);
            } else {
                symbol_cnt = symbol_cnt + 1;
            }
        } else {
            phase_cnt = phase_cnt + 1;
        }
    }

    // ── Drive outputs ─────────────────────────────────────────────────────────
    if (gpio_override) {
        symbol_num = gpio_symbol_num;
        slot_num   = gpio_slot_num;
    } else {
        symbol_num = symbol_cnt;
        slot_num   = slot_cnt;
    }

    // AXI-Lite status readback — always reflects internal counters
    // (not GPIO values, so PS can monitor autonomous counter position
    //  even while override is active)
    symbol_num_out = symbol_cnt;
    slot_num_out   = slot_cnt;
}
