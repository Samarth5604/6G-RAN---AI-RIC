/*
 * slot_counter_tb.cpp — Testbench for slot_counter_top
 *
 * Tests:
 *  1. Free-running: counts symbols 0–13 then wraps, correct cycle counts
 *  2. Slot rollover: symbol 13→0 increments slot_cnt
 *  3. Frame rollover: slot 79→0 wraps correctly
 *  4. GPIO override: output follows GPIO, internal counter resets
 *  5. Override release: counter resumes from GPIO position
 *  6. PS sync: sync_req resets to specified symbol/slot
 */

#include <iostream>
#include "slot_counter.h"

static int errors = 0;

static void check(const char *label, int got, int expected) {
    if (got != expected) {
        std::cout << "FAIL [" << label << "] got=" << got
                  << " expected=" << expected << "\n";
        errors++;
    }
}

// Drive one clock cycle
static void tick(
    ap_uint<4> &sym, ap_uint<7> &slt,
    ap_uint<1> ovr=0, ap_uint<4> g_sym=0, ap_uint<7> g_slt=0,
    ap_uint<1> sync=0, ap_uint<4> s_sym=0, ap_uint<7> s_slt=0)
{
    ap_uint<4> sym_rb; ap_uint<7> slt_rb;
    slot_counter_top(sym, slt, ovr, g_sym, g_slt, sync, s_sym, s_slt,
                     sym_rb, slt_rb);
}

int main() {

    ap_uint<4> sym; ap_uint<7> slt;
    ap_uint<4> sym_rb; ap_uint<7> slt_rb;

    // ── Test 1: Symbol 0 extended CP duration (2682 cycles) ──────────────────
    // Reset via sync to symbol=0, slot=0
    slot_counter_top(sym, slt, 0,0,0, 1,0,0, sym_rb, slt_rb);
    check("sym_after_sync", sym, 0);
    check("slt_after_sync", slt, 0);

    // Run CYCLES_EXTENDED_SYM-1 cycles — should stay on symbol 0
    for (int i = 0; i < CYCLES_EXTENDED_SYM - 1; i++)
        tick(sym, slt);
    check("sym_end_of_sym0", sym, 0);

    // One more cycle — should advance to symbol 1
    tick(sym, slt);
    check("sym_after_sym0", sym, 1);

    // ── Test 2: Symbol 1 normal CP duration (2678 cycles) ────────────────────
    for (int i = 0; i < CYCLES_NORMAL_SYM - 1; i++)
        tick(sym, slt);
    check("sym_end_of_sym1", sym, 1);
    tick(sym, slt);
    check("sym_after_sym1", sym, 2);

    // ── Test 3: Symbol 7 extended CP duration ────────────────────────────────
    // Sync to symbol 7 directly and verify extended duration
    slot_counter_top(sym, slt, 0,0,0, 1,7,0, sym_rb, slt_rb);
    check("sym_sync_to_7", sym, 7);
    for (int i = 0; i < CYCLES_EXTENDED_SYM - 1; i++)
        tick(sym, slt);
    check("sym_end_of_sym7", sym, 7);
    tick(sym, slt);
    check("sym_after_sym7", sym, 8);

    // ── Test 4: Full slot timing ──────────────────────────────────────────────
    // Sync to start of slot
    slot_counter_top(sym, slt, 0,0,0, 1,0,0, sym_rb, slt_rb);
    for (int i = 0; i < CYCLES_PER_SLOT; i++)
        tick(sym, slt);
    check("sym_after_full_slot", sym, 0);
    check("slt_after_full_slot", slt, 1);

    // ── Test 5: Slot rollover at slot 79 ─────────────────────────────────────
    slot_counter_top(sym, slt, 0,0,0, 1,13,79, sym_rb, slt_rb);
    // Run to end of symbol 13 (normal CP)
    for (int i = 0; i < CYCLES_NORMAL_SYM; i++)
        tick(sym, slt);
    check("slt_frame_wrap", slt, 0);
    check("sym_frame_wrap", sym, 0);

    // ── Test 6: GPIO override ─────────────────────────────────────────────────
    // Sync to sym=5, slot=10 then enable override with different values
    slot_counter_top(sym, slt, 0,0,0, 1,5,10, sym_rb, slt_rb);
    // Apply override: PS says sym=7, slot=20
    tick(sym, slt, /*ovr=*/1, /*g_sym=*/7, /*g_slt=*/20);
    check("sym_override", sym, 7);
    check("slt_override", slt, 20);

    // ── Test 7: Override release — counter resumes from GPIO position ─────────
    // After override, release and run one cycle
    tick(sym, slt, /*ovr=*/0);
    // Counter was snapped to sym=7,slot=20 during override
    // After release it should increment from there
    // phase_cnt was reset to 0 during override
    // So first free-running cycle: still sym=7 (phase 0→1)
    check("sym_after_override_release", sym, 7);
    check("slt_after_override_release", slt, 20);

    // ── Test 8: PS sync ───────────────────────────────────────────────────────
    // Run a few cycles then sync to sym=2, slot=5
    for (int i = 0; i < 100; i++) tick(sym, slt);
    slot_counter_top(sym, slt, 0,0,0, 1,2,5, sym_rb, slt_rb);
    check("sym_after_ps_sync", sym, 2);
    check("slt_after_ps_sync", slt, 5);

    // ── Test 9: Status readback reflects internal counter ─────────────────────
    slot_counter_top(sym, slt, 0,0,0, 1,3,7, sym_rb, slt_rb);
    // Apply override sym=9,slot=30 — readback should still show internal=3,7
    // (after sync, then override snaps internal to 9,30)
    tick(sym, slt, 1, 9, 30);
    // readback: call with full signature to get sym_rb/slt_rb
    slot_counter_top(sym, slt, 1, 9, 30, 0,0,0, sym_rb, slt_rb);
    // sym_rb reflects internal counter which was snapped to 9,30 by override
    check("sym_rb_during_override", sym_rb, 9);
    check("slt_rb_during_override", slt_rb, 30);

    // ── Timing verification ───────────────────────────────────────────────────
    std::cout << "\nTiming constants:\n";
    std::cout << "  CYCLES_EXTENDED_SYM = " << CYCLES_EXTENDED_SYM
              << " (" << CYCLES_EXTENDED_SYM * (1000.0/300) << " ns) — sym 0 and 7\n";
    std::cout << "  CYCLES_NORMAL_SYM   = " << CYCLES_NORMAL_SYM
              << " (" << CYCLES_NORMAL_SYM * (1000.0/300) << " ns) — sym 1-6, 8-13\n";
    std::cout << "  CYCLES_PER_SLOT     = " << CYCLES_PER_SLOT
              << " (" << CYCLES_PER_SLOT * (1000.0/300) / 1000 << " us)\n";
    std::cout << "  Check 2x" << CYCLES_EXTENDED_SYM << " + 12x" << CYCLES_NORMAL_SYM
              << " = " << 2*CYCLES_EXTENDED_SYM + 12*CYCLES_NORMAL_SYM
              << " == " << CYCLES_PER_SLOT << " : "
              << (2*CYCLES_EXTENDED_SYM + 12*CYCLES_NORMAL_SYM == CYCLES_PER_SLOT
                  ? "PASS" : "FAIL") << "\n";

    if (errors == 0)
        std::cout << "\nALL TESTS PASSED\n";
    else
        std::cout << "\nFAIL: " << errors << " error(s)\n";

    return errors ? 1 : 0;
}
