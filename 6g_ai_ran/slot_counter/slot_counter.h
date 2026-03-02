#ifndef SLOT_COUNTER_H
#define SLOT_COUNTER_H

#include <ap_int.h>

// ─────────────────────────────────────────────────────────────────────────────
// NR Timing Parameters — μ=3 (120kHz SCS), 300MHz PL clock
//
//   Frame    : 10ms  = 3,000,000 cycles
//   Slot     : 125µs =    37,500 cycles  (80 slots per frame)
//
//   Per TS 38.211 Table 4.3.2-1, symbols 0 and 7 have extended CP,
//   all other symbols have normal CP.
//
//   At 300MHz, exact 3GPP CP durations are non-integer cycle counts,
//   so the 8-cycle remainder (37500 - 14×2678 = 8) is distributed
//   equally across the two extended symbols (4 cycles each):
//
//     Symbol 0, 7 : 2678 + 4 = 2682 cycles  (8940.0 ns)
//     Symbol 1–6, 8–13 :       2678 cycles  (8926.7 ns)
//     Check: 2×2682 + 12×2678 = 37500 ✓
//
//   Slot boundary is exact; symbol boundaries are ±13ns of 3GPP spec —
//   acceptable for loopback prototype.
// ─────────────────────────────────────────────────────────────────────────────
#define CLK_HZ              300000000
#define SYMBOLS_PER_SLOT    14
#define SLOTS_PER_FRAME     80

#define CYCLES_PER_SLOT     37500
#define CYCLES_NORMAL_SYM   2678    // symbols 1–6, 8–13
#define CYCLES_EXTENDED_SYM 2682    // symbols 0 and 7 (extended CP, TS 38.211)

// ─────────────────────────────────────────────────────────────────────────────
// GPIO override logic
//
//   When gpio_override == 1:
//     symbol_num output = gpio_symbol_num (PS-driven value)
//     slot_num   output = gpio_slot_num   (PS-driven value)
//     Internal counters are RESET to match GPIO values so they stay in sync
//     when override is released.
//
//   When gpio_override == 0:
//     symbol_num output = internal symbol counter (hardware autonomous)
//     slot_num   output = internal slot counter
//
//   PS-reset interface (AXI-Lite):
//     Write sync_req=1 with sync_symbol and sync_slot to resync counters
//     to a known frame boundary. Cleared automatically after one cycle.
// ─────────────────────────────────────────────────────────────────────────────

// ─────────────────────────────────────────────────────────────────────────────
// Top-level port list
//
//   Outputs (to chan_est, snr_monitor, scheduler):
//     symbol_num [3:0]  : current OFDM symbol within slot (0–13)
//     slot_num   [6:0]  : current slot within frame (0–79)
//
//   GPIO override inputs (from axi_gpio_0, same signals as before):
//     gpio_override     : 1 = PS controls symbol_num/slot_num
//     gpio_symbol_num   : PS-driven symbol value (used when override=1)
//     gpio_slot_num     : PS-driven slot value   (used when override=1)
//
//   AXI-Lite control/status (s_axi_CTRL):
//     sync_req          : write 1 to resync counters to sync_symbol/sync_slot
//     sync_symbol [3:0] : target symbol for resync
//     sync_slot   [6:0] : target slot for resync
//     symbol_num_out    : read-back of current symbol_num (status)
//     slot_num_out      : read-back of current slot_num   (status)
// ─────────────────────────────────────────────────────────────────────────────
void slot_counter_top(
    // Outputs to pipeline IPs
    ap_uint<4>  &symbol_num,
    ap_uint<7>  &slot_num,

    // GPIO override from axi_gpio_0
    ap_uint<1>  gpio_override,
    ap_uint<4>  gpio_symbol_num,
    ap_uint<7>  gpio_slot_num,

    // AXI-Lite control
    ap_uint<1>  sync_req,
    ap_uint<4>  sync_symbol,
    ap_uint<7>  sync_slot,

    // AXI-Lite status readback
    ap_uint<4>  &symbol_num_out,
    ap_uint<7>  &slot_num_out
);

#endif
