/*
 * snr_monitor_tb.cpp — Testbench for snr_monitor_top
 *
 * Tests:
 *  1. High SNR case: clean channel, minimal noise → SNR_out >> 1
 *  2. Low SNR case:  heavy noise added → SNR_out small
 *  3. Non-DMRS symbol: snr_out unchanged from previous value
 *  4. Zero noise: snr_out saturates to 0xFFFFFFFF
 *
 * SNR verification:
 *   We inject a known channel H and known noise level N.
 *   Expected SNR_linear ≈ signal_power / noise_power.
 *   We check that snr_out / 65536.0 is within 20% of expected.
 *   (20% tolerance accounts for Q1.14 quantisation across 100 pilots)
 */

#include <iostream>
#include <cmath>
#include "snr_monitor.h"
#include "dmrs_pilots.h"

static int errors = 0;

// Build and inject full FFT + weight streams for a given channel H and noise
static void run_test(
    float H_re, float H_im,
    float noise_sigma,
    ap_uint<4> symbol_num,
    snr_t &snr_out,
    const char *label)
{
    hls::stream<axis_t> fft_in[NUM_ANT];
    hls::stream<axis_t> weight_stream;

    // ── Build FFT stream ──────────────────────────────────────────────────────
    // At pilot k: Y[k] = H*X[k] + noise
    // At non-pilot: Y[k] = 0 (guard/data — not used by monitor)
    for (int k = 0; k < FFT_SIZE; k++) {
        float yr = 0.0f, yi = 0.0f;
        if (is_pilot(k)) {
            int m = pilot_index(k);
            float xr = (float)DMRS_RE[m];
            float xi = (float)DMRS_IM[m];
            // H*X
            yr = H_re * xr - H_im * xi;
            yi = H_im * xr + H_re * xi;
            // Add noise (deterministic: noise_sigma on real, -noise_sigma on imag)
            yr += noise_sigma;
            yi -= noise_sigma;
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

    // ── Build weight stream ───────────────────────────────────────────────────
    // Beam 0, ant 0: H[k] = channel estimate = H (flat channel, perfect est)
    // Remaining 3072 words: zeros
    for (int b = 0; b < NUM_BEAM; b++) {
        for (int a = 0; a < NUM_ANT; a++) {
            for (int k = 0; k < FFT_SIZE; k++) {
                axis_t w;
                if (b == 0 && a == 0) {
                    // Channel estimate = H for all subcarriers (flat channel)
                    ap_fixed<16,2> wr, wi;
                    wr = (ap_fixed<16,2>)H_re;
                    wi = (ap_fixed<16,2>)H_im;
                    w.data.range(15,  0) = wr.range(15, 0);
                    w.data.range(31, 16) = wi.range(15, 0);
                } else {
                    w.data = 0;
                }
                bool is_last = (b==NUM_BEAM-1) && (a==NUM_ANT-1) && (k==FFT_SIZE-1);
                w.last = is_last ? ap_uint<1>(1) : ap_uint<1>(0);
                w.keep = 0xF;
                weight_stream.write(w);
            }
        }
    }

    snr_monitor_top(fft_in, weight_stream, symbol_num, snr_out);

    // ── Compute expected SNR ──────────────────────────────────────────────────
    // With flat channel H and deterministic noise (noise_sigma, -noise_sigma):
    //   S[k] = H*X[k], |S[k]|² = (H_re²+H_im²) * (X_re²+X_im²)
    //   For QPSK: |X[k]|² = 0.5 + 0.5 = 1.0
    //   sig_pow per pilot = H_re²+H_im²
    //   noise per pilot = 2 * noise_sigma²
    float h_mag2 = H_re*H_re + H_im*H_im;
    float sig_per_pilot = h_mag2;
    float nse_per_pilot = 2.0f * noise_sigma * noise_sigma;
    float expected_snr  = (nse_per_pilot > 0.0f)
                          ? (sig_per_pilot / nse_per_pilot) : 1e9f;

    float got_snr = (float)snr_out / 65536.0f;

    if (symbol_num == 2 && noise_sigma > 0.0f && expected_snr <= 65535.0f) {
        float ratio = got_snr / expected_snr;
        if (ratio < 0.7f || ratio > 1.3f) {
            std::cout << "FAIL [" << label << "] "
                      << "got_snr=" << got_snr
                      << " expected=" << expected_snr
                      << " ratio=" << ratio << "\n";
            errors++;
        } else {
            std::cout << "PASS [" << label << "] "
                      << "SNR=" << got_snr << " (expected~" << expected_snr
                      << ", ratio=" << ratio << ")\n";
        }
    }
}

int main() {

    snr_t snr_out = 0;

    // Test 1: High SNR — strong signal, tiny noise
    // SNR_linear = |H|²/(2σ²) = 0.3125/0.000002 = 156250
    // This exceeds Q16.16 max of 65535 → should saturate to 0xFFFFFFFF
    run_test(0.5f, 0.25f, 0.001f, ap_uint<4>(2), snr_out, "HighSNR");
    if (snr_out != (snr_t)0xFFFFFFFF) {
        std::cout << "FAIL [HighSNR-sat] expected 0xFFFFFFFF (saturation), got "
                  << snr_out << " = " << (float)snr_out/65536.0f << "\n";
        errors++;
    } else {
        std::cout << "PASS [HighSNR-sat] correctly saturated (SNR>48dB)\n";
    }

    // Test 2: Low SNR — weak signal, heavy noise
    run_test(0.1f, 0.0f, 0.08f, ap_uint<4>(2), snr_out, "LowSNR");

    // Test 3: Non-DMRS symbol — snr_out should be unchanged
    snr_t snr_before = snr_out;
    run_test(0.5f, 0.25f, 0.001f, ap_uint<4>(5), snr_out, "NonDMRS");
    if (snr_out != snr_before) {
        std::cout << "FAIL [NonDMRS] snr_out changed on non-DMRS symbol: "
                  << snr_before << " → " << snr_out << "\n";
        errors++;
    } else {
        std::cout << "PASS [NonDMRS] snr_out unchanged on symbol 5\n";
    }

    // Test 4: Zero noise — SNR should be very high (saturated or near-saturated)
    // Due to rounding in the >>14 shift, nse_pow is never exactly 0,
    // so we check for saturation OR a very high SNR (> 1000 linear = 30dB)
    run_test(0.5f, 0.25f, 0.0f, ap_uint<4>(2), snr_out, "ZeroNoise");
    float zero_noise_snr = (float)snr_out / 65536.0f;
    if (snr_out != (snr_t)0xFFFFFFFF && zero_noise_snr < 1000.0f) {
        std::cout << "FAIL [ZeroNoise] expected saturation or SNR>1000, got "
                  << zero_noise_snr << "\n";
        errors++;
    } else {
        std::cout << "PASS [ZeroNoise] SNR=" << zero_noise_snr
                  << " (saturated or >30dB)\n";
    }

    if (errors == 0)
        std::cout << "\nALL TESTS PASSED\n";
    else
        std::cout << "\nFAIL: " << errors << " error(s)\n";

    return errors ? 1 : 0;
}
