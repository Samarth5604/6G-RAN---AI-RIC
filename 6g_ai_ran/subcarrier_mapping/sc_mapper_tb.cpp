/*
 * sc_mapper_tb.cpp — Testbench for sc_mapper_rx
 *
 * Tests:
 *  1. Output count is exactly NUM_DATA_SC (499) per antenna
 *  2. Output values match the input samples at correct FFT indices
 *  3. Guard band samples (0–211, 812–1023) are discarded
 *  4. DC null (512) is discarded
 *  5. DMRS pilot positions are discarded
 *  6. TLAST asserted only on output sample 498
 *  7. Both antennas produce independent correct outputs
 */

#include <iostream>
#include <cstring>
#include "sc_mapper.h"
#include "sc_map_table.h"

static int errors = 0;

static void check(const char *label, int got, int expected) {
    if (got != expected) {
        std::cout << "FAIL [" << label << "] got=" << got
                  << " expected=" << expected << "\n";
        errors++;
    }
}

int main() {

    hls::stream<axis_t> fft_in[NUM_ANT];
    hls::stream<axis_t> data_out[NUM_ANT];

    // ── Build input: sample value = FFT index for easy verification ───────────
    // Antenna 0: I = k,        Q = k + 1000
    // Antenna 1: I = k + 2000, Q = k + 3000
    // (values kept in 16-bit range by using k & 0x7FFF)
    for (int k = 0; k < FFT_SIZE; k++) {
        for (int a = 0; a < NUM_ANT; a++) {
            axis_t s;
            int base = a * 2000;
            s.data.range(15,  0) = (ap_uint<16>)((k + base) & 0x7FFF);
            s.data.range(31, 16) = (ap_uint<16>)((k + base + 1000) & 0x7FFF);
            s.last = (k == FFT_SIZE - 1) ? ap_uint<1>(1) : ap_uint<1>(0);
            s.keep = 0xF;
            fft_in[a].write(s);
        }
    }

    sc_mapper_rx(fft_in, data_out);

    // ── Verify output ─────────────────────────────────────────────────────────
    int count[NUM_ANT] = {0, 0};

    for (int m = 0; m < NUM_DATA_SC; m++) {
        int k = (int)DATA_SC_IDX[m];   // expected FFT index

        for (int a = 0; a < NUM_ANT; a++) {
            if (data_out[a].empty()) {
                std::cout << "FAIL: data_out[" << a << "] empty at m=" << m << "\n";
                errors++;
                continue;
            }

            axis_t r = data_out[a].read();
            int base = a * 2000;
            int exp_i = (k + base) & 0x7FFF;
            int exp_q = (k + base + 1000) & 0x7FFF;
            int got_i = (int)(ap_uint<16>)r.data.range(15,  0);
            int got_q = (int)(ap_uint<16>)r.data.range(31, 16);

            char label[64];
            snprintf(label, sizeof(label), "I[a=%d,m=%d,k=%d]", a, m, k);
            check(label, got_i, exp_i);
            snprintf(label, sizeof(label), "Q[a=%d,m=%d,k=%d]", a, m, k);
            check(label, got_q, exp_q);

            snprintf(label, sizeof(label), "TLAST[a=%d,m=%d]", a, m);
            check(label, (int)r.last, (m == NUM_DATA_SC - 1) ? 1 : 0);

            count[a]++;
        }
    }

    // Verify no extra samples in output
    for (int a = 0; a < NUM_ANT; a++) {
        char label[32];
        snprintf(label, sizeof(label), "count[a=%d]", a);
        check(label, count[a], NUM_DATA_SC);
        if (!data_out[a].empty()) {
            std::cout << "FAIL: data_out[" << a << "] has extra samples\n";
            errors++;
        }
    }

    // Verify input streams fully consumed
    for (int a = 0; a < NUM_ANT; a++) {
        if (!fft_in[a].empty()) {
            std::cout << "FAIL: fft_in[" << a << "] not fully consumed\n";
            errors++;
        }
    }

    if (errors == 0)
        std::cout << "PASS: sc_mapper_rx — " << NUM_DATA_SC
                  << " data subcarriers extracted correctly from both antennas\n";
    else
        std::cout << "FAIL: " << errors << " error(s)\n";

    return errors ? 1 : 0;
}
