/*
 * chan_est_tb.cpp — Testbench for chan_est_top (stream weight output)
 *
 * Tests:
 *  1. On DMRS symbol (symbol_num=2): weight_stream contains 4096 words
 *     in correct [beam][ant][subcarrier] order with correct values
 *  2. Pilot subcarriers recover channel H = 0.5 + 0.25j within tolerance
 *  3. Non-pilot subcarriers get ZOH from preceding pilot
 *  4. On non-DMRS symbol (symbol_num=5): weight_stream is empty
 *  5. TLAST set only on word 4095
 */

#include <iostream>
#include <cmath>
#include "chan_est.h"
#include "dmrs_pilots.h"

static int errors = 0;
#define TOLERANCE 0.05f

static void checkf(const char *label, float got, float expected) {
    if (fabsf(got - expected) > TOLERANCE) {
        std::cout << "FAIL [" << label << "] got=" << got
                  << " expected=" << expected
                  << " diff=" << fabsf(got - expected) << "\n";
        errors++;
    }
}

// Pack a known flat channel H through the correct 100RB DMRS pilots
static void fill_fft_stream(
    hls::stream<axis_t> fft_in[NUM_ANT],
    float H_re, float H_im)
{
    for (int k = 0; k < FFT_SIZE; k++) {
        float yr, yi;
        if (is_pilot(k)) {
            int m = pilot_index(k);
            float xr = (float)DMRS_RE[m];
            float xi = (float)DMRS_IM[m];
            // Y = H * X
            yr = H_re * xr - H_im * xi;
            yi = H_im * xr + H_re * xi;
        } else {
            // Non-pilot: send zeros (guard band) or arbitrary data
            yr = 0.0f;
            yi = 0.0f;
        }

        for (int a = 0; a < NUM_ANT; a++) {
            axis_t s;
            s.data.range(15,  0) = (ap_uint<16>)((ap_int<16>)(yr * 16384.0f));
            s.data.range(31, 16) = (ap_uint<16>)((ap_int<16>)(yi * 16384.0f));
            s.last = (k == FFT_SIZE - 1) ? ap_uint<1>(1) : ap_uint<1>(0);
            s.keep = 0xF;
            fft_in[a].write(s);
        }
    }
}

int main() {

    const float H_re = 0.5f;
    const float H_im = 0.25f;

    // ── Test 1: DMRS symbol produces correct weight stream ───────────────────
    {
        hls::stream<axis_t> fft_in[NUM_ANT];
        hls::stream<axis_t> weight_stream;

        fill_fft_stream(fft_in, H_re, H_im);
        chan_est_top(fft_in, ap_uint<4>(2), weight_stream);

        // Verify stream has exactly WEIGHT_STREAM_LEN words
        int count = 0;
        int pilot_errors_re = 0, pilot_errors_im = 0;
        int zoh_errors = 0;

        // Drain and check in output order: [beam][ant][subcarrier]
        for (int b = 0; b < NUM_BEAM && !weight_stream.empty(); b++) {
            for (int a = 0; a < NUM_ANT && !weight_stream.empty(); a++) {
                for (int k = 0; k < FFT_SIZE && !weight_stream.empty(); k++) {
                    axis_t w = weight_stream.read();

                    // Reinterpret Q1.14 bits as float
                    ap_fixed<16,2> wr, wi;
                    wr.range(15,0) = w.data.range(15,  0);
                    wi.range(15,0) = w.data.range(31, 16);
                    float got_re = (float)wr;
                    float got_im = (float)wi;

                    // Only check subcarriers in the occupied band (212–811)
                    // excluding DC (512). Guard band subcarriers received
                    // zero input so their ZOH estimate is from the nearest
                    // pilot which may differ from H.
                    bool in_occupied = (k >= 212 && k <= 811 && k != 512);
                    if (in_occupied) {
                        if (fabsf(got_re - H_re) > TOLERANCE) {
                            std::cout << "FAIL weight_re[b=" << b << ",a=" << a
                                      << ",k=" << k << "] got=" << got_re
                                      << " expected=" << H_re << "\n";
                            pilot_errors_re++;
                        }
                        if (fabsf(got_im - H_im) > TOLERANCE) {
                            std::cout << "FAIL weight_im[b=" << b << ",a=" << a
                                      << ",k=" << k << "] got=" << got_im
                                      << " expected=" << H_im << "\n";
                            pilot_errors_im++;
                        }
                    }

                    // Check TLAST
                    bool is_last = (b == NUM_BEAM-1) &&
                                   (a == NUM_ANT-1)  &&
                                   (k == FFT_SIZE-1);
                    if ((int)w.last != (is_last ? 1 : 0)) {
                        char label[64];
                        snprintf(label, sizeof(label),
                                 "TLAST[b=%d,a=%d,k=%d]", b, a, k);
                        std::cout << "FAIL [" << label << "] got=" << (int)w.last
                                  << " expected=" << (is_last ? 1 : 0) << "\n";
                        errors++;
                    }
                    count++;
                }
            }
        }

        if (pilot_errors_re > 0) {
            std::cout << "FAIL: " << pilot_errors_re
                      << " weight_re values outside tolerance\n";
            errors += pilot_errors_re;
        }
        if (pilot_errors_im > 0) {
            std::cout << "FAIL: " << pilot_errors_im
                      << " weight_im values outside tolerance\n";
            errors += pilot_errors_im;
        }

        char label[64];
        snprintf(label, sizeof(label), "weight_stream_count");
        if (count != WEIGHT_STREAM_LEN) {
            std::cout << "FAIL [" << label << "] got=" << count
                      << " expected=" << WEIGHT_STREAM_LEN << "\n";
            errors++;
        }

        if (errors == 0)
            std::cout << "PASS: DMRS symbol — "
                      << WEIGHT_STREAM_LEN << " weights correct\n";
    }

    // ── Test 2: Non-DMRS symbol — weight_stream must be empty ────────────────
    {
        hls::stream<axis_t> fft_in[NUM_ANT];
        hls::stream<axis_t> weight_stream;

        fill_fft_stream(fft_in, 0.9f, 0.1f);   // different channel, should be ignored
        chan_est_top(fft_in, ap_uint<4>(5), weight_stream);

        if (!weight_stream.empty()) {
            std::cout << "FAIL: weight_stream not empty on non-DMRS symbol\n";
            errors++;
        } else {
            std::cout << "PASS: non-DMRS symbol — weight_stream empty\n";
        }
    }

    if (errors == 0)
        std::cout << "\nALL TESTS PASSED\n";
    else
        std::cout << "\nFAIL: " << errors << " error(s)\n";

    return errors ? 1 : 0;
}
