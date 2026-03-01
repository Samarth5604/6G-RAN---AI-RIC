/*
 * cp_removal_tb.cpp — Testbench for cp_removal only
 *
 * Tests:
 *  1. CP samples (0..143) are discarded — not present in output
 *  2. Data samples (144..1167) appear at output unchanged
 *  3. Output count is exactly FFT_SIZE (1024)
 *  4. TLAST set only on output sample 1023
 */

#include <iostream>
#include <cstdlib>
#include "cp_removal.h"     // only this — no cp_insertion.h

static int errors = 0;

static void check(const char *label, int got, int expected) {
    if (got != expected) {
        std::cout << "FAIL [" << label << "] got=" << got
                  << " expected=" << expected << "\n";
        errors++;
    }
}

int main() {

    hls::stream<axis_t> in, out;

    // Input: 1168 samples. I = index, Q = index + 1000
    for (int i = 0; i < SYMBOL_LEN; i++) {
        axis_t s;
        s.data.range(15,  0) = (ap_uint<16>)(i & 0xFFFF);
        s.data.range(31, 16) = (ap_uint<16>)((i + 1000) & 0xFFFF);
        s.last = (i == SYMBOL_LEN - 1) ? ap_uint<1>(1) : ap_uint<1>(0);
        s.keep = 0xF;
        in.write(s);
    }

    cp_removal(in, out);

    // Output sample 'count' must match input sample 'count + CP_LEN'
    int count = 0;
    while (!out.empty()) {
        axis_t r = out.read();
        char label[64];
        int src = count + CP_LEN;

        snprintf(label, sizeof(label), "I[%d]", count);
        check(label, (int)(ap_uint<16>)r.data.range(15, 0),
              src & 0xFFFF);

        snprintf(label, sizeof(label), "Q[%d]", count);
        check(label, (int)(ap_uint<16>)r.data.range(31, 16),
              (src + 1000) & 0xFFFF);

        snprintf(label, sizeof(label), "TLAST[%d]", count);
        check(label, (int)r.last, (count == FFT_SIZE - 1) ? 1 : 0);

        count++;
    }

    check("output_count", count, FFT_SIZE);

    if (errors == 0)
        std::cout << "PASS: cp_removal — " << FFT_SIZE
                  << " samples correct, TLAST correct\n";
    else
        std::cout << "FAIL: " << errors << " error(s)\n";

    return errors ? 1 : 0;
}
