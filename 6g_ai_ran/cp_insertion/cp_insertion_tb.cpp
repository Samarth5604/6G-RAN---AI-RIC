/*
 * cp_insertion_tb.cpp — Testbench for cp_insertion only
 *
 * Tests:
 *  1. Output count is exactly SYMBOL_LEN (1168)
 *  2. First CP_LEN (144) output samples match input samples 880..1023
 *  3. Remaining FFT_SIZE (1024) output samples match input samples 0..1023
 *  4. TLAST set only on output sample 1167
 */

#include <iostream>
#include <cstdlib>
#include "cp_insertion.h"   // only this — no cp_removal.h

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

    // Input: 1024 IFFT samples. I = index, Q = index + 1000
    for (int i = 0; i < FFT_SIZE; i++) {
        axis_t s;
        s.data.range(15,  0) = (ap_uint<16>)(i & 0xFFFF);
        s.data.range(31, 16) = (ap_uint<16>)((i + 1000) & 0xFFFF);
        s.last = (i == FFT_SIZE - 1) ? ap_uint<1>(1) : ap_uint<1>(0);
        s.keep = 0xF;
        in.write(s);
    }

    cp_insertion(in, out);

    int count = 0;
    while (!out.empty()) {
        axis_t r = out.read();
        int got_i = (int)(ap_uint<16>)r.data.range(15,  0);
        int got_q = (int)(ap_uint<16>)r.data.range(31, 16);
        char label[64];

        if (count < CP_LEN) {
            // CP region: output[0..143] must equal input[880..1023]
            int src = CP_START + count;
            snprintf(label, sizeof(label), "cp_I[%d]", count);
            check(label, got_i, src & 0xFFFF);
            snprintf(label, sizeof(label), "cp_Q[%d]", count);
            check(label, got_q, (src + 1000) & 0xFFFF);
        } else {
            // Data region: output[144..1167] must equal input[0..1023]
            int src = count - CP_LEN;
            snprintf(label, sizeof(label), "data_I[%d]", count);
            check(label, got_i, src & 0xFFFF);
            snprintf(label, sizeof(label), "data_Q[%d]", count);
            check(label, got_q, (src + 1000) & 0xFFFF);
        }

        snprintf(label, sizeof(label), "TLAST[%d]", count);
        check(label, (int)r.last, (count == SYMBOL_LEN - 1) ? 1 : 0);

        count++;
    }

    check("output_count", count, SYMBOL_LEN);

    if (errors == 0)
        std::cout << "PASS: cp_insertion — " << SYMBOL_LEN
                  << " samples correct, CP correct, TLAST correct\n";
    else
        std::cout << "FAIL: " << errors << " error(s)\n";

    return errors ? 1 : 0;
}
