/*
 * snr_monitor.cpp — Per-slot SNR Estimator for 6G RAN DU
 *
 * ── Algorithm ────────────────────────────────────────────────────────────────
 *
 *  Runs on the DMRS symbol (symbol_num == 2) only.
 *  Uses pilot residuals to estimate signal and noise power:
 *
 *    S[k] = H[k] * X[k]        reconstructed signal at pilot k
 *    E[k] = Y[k] - S[k]        residual (noise estimate)
 *
 *    sig_pow = Σ |S[k]|²  over 100 pilots
 *    nse_pow = Σ |E[k]|²  over 100 pilots
 *
 *    SNR_out = (sig_pow << 16) / nse_pow    (Q16.16 fixed-point)
 *
 *  PS reads SNR_out via AXI-Lite and converts:
 *    SNR_dB = 10.0 * log10((double)snr_out / 65536.0)
 *
 * ── Three-pass structure ──────────────────────────────────────────────────────
 *
 *  Pass A (buf_loop, 1024 cycles):
 *    Buffer the full FFT frame for both antennas.
 *    Always runs to keep the input stream flowing.
 *
 *  Pass B (weight_drain, 4096 cycles):
 *    Read the full weight stream from chan_est.
 *    Only retain beam 0, ant 0 weights (words 0..1023).
 *    Words 1024..4095 (beam 0 ant 1, beam 1 ant 0, beam 1 ant 1) discarded.
 *    Always runs to keep weight_stream flowing.
 *
 *  Pass C (pilot_snr, 100 cycles):
 *    Only on DMRS symbol. Reads pilot positions from fft_buf and h_buf.
 *    Computes signal and noise power, accumulates, divides.
 *
 * ── Why beam 0 ant 0 only ─────────────────────────────────────────────────────
 *
 *  H[k] from the channel estimator represents the composite channel seen
 *  by antenna 0 at subcarrier k. Using this single estimate avoids needing
 *  to average across beams (which would require knowing the beamforming gain
 *  per beam) while still giving a representative channel quality indicator.
 *
 * ── Division implementation ───────────────────────────────────────────────────
 *
 *  HLS maps ap_int division to a multi-cycle divider (~32 cycles latency).
 *  Since this runs once per slot (not in a pipeline), latency is not critical.
 *  The division result is clamped to 0xFFFFFFFF if noise power is zero
 *  (perfect channel — no noise) to avoid divide-by-zero.
 */

#include "snr_monitor.h"
#include "dmrs_pilots.h"

void snr_monitor_top(
    hls::stream<axis_t> fft_in[NUM_ANT],
    hls::stream<axis_t> &weight_stream,
    ap_uint<4>           symbol_num,
    snr_t               &snr_out)
{
#pragma HLS INTERFACE axis       port=fft_in
#pragma HLS INTERFACE axis       port=weight_stream
#pragma HLS INTERFACE ap_none    port=symbol_num
#pragma HLS INTERFACE s_axilite  port=snr_out    bundle=SNR
#pragma HLS INTERFACE s_axilite  port=return     bundle=SNR
#pragma HLS DISAGGREGATE         variable=fft_in

    // ── FFT sample buffer ─────────────────────────────────────────────────────
    // Only antenna 0 is needed for SNR (beam 0 ant 0 channel).
    // Antenna 1 is read and discarded to keep the stream flowing.
    ap_int<16> fft_re[FFT_SIZE];
    ap_int<16> fft_im[FFT_SIZE];

    // ── Channel estimate buffer (beam 0, ant 0 only) ──────────────────────────
    // Raw Q1.14 bit patterns stored as ap_int<16> — avoids ap_fixed
    // truncation when loading from the weight stream word.
    ap_int<16> h_re[FFT_SIZE];
    ap_int<16> h_im[FFT_SIZE];

    // ═════════════════════════════════════════════════════════════════════════
    // Pass A: buffer FFT stream — always, every symbol
    // ═════════════════════════════════════════════════════════════════════════
    buf_loop:
    for (int k = 0; k < FFT_SIZE; k++) {
#pragma HLS PIPELINE II=1
        // Antenna 0: buffer for SNR computation
        axis_t s0 = fft_in[0].read();
        fft_re[k] = (ap_int<16>)s0.data.range(15,  0);
        fft_im[k] = (ap_int<16>)s0.data.range(31, 16);
        // Antenna 1: consume and discard
        fft_in[1].read();
    }

    // ═════════════════════════════════════════════════════════════════════════
    // Pass B: drain weight stream — always, every symbol
    //   Words 0..1023      : beam 0, ant 0 — store as H[k]
    //   Words 1024..4095   : beam 0 ant 1, beam 1 ant 0/1 — discard
    // ═════════════════════════════════════════════════════════════════════════
    weight_drain:
    for (int idx = 0; idx < WEIGHT_STREAM_LEN; idx++) {
#pragma HLS PIPELINE II=1
        axis_t w = weight_stream.read();
        if (idx < FFT_SIZE) {
            // beam=0, ant=0 subcarrier weights — store raw Q1.14 bits
            h_re[idx] = (ap_int<16>)w.data.range(15,  0);
            h_im[idx] = (ap_int<16>)w.data.range(31, 16);
        }
        // idx >= FFT_SIZE: discard silently
    }

    // ═════════════════════════════════════════════════════════════════════════
    // Pass C: SNR computation — DMRS symbol only
    // ═════════════════════════════════════════════════════════════════════════
    if (symbol_num == 2) {

        accum_t sig_pow = 0;
        accum_t nse_pow = 0;

        pilot_snr:
        for (int m = 0; m < NUM_PILOTS; m++) {
#pragma HLS PIPELINE II=1

            // FFT index for pilot m — split across DC gap
            int k = (m < 50) ? (213 + m * 6) : (513 + (m - 50) * 6);

            // All values treated as Q1.14 integers (raw ap_int<16>).
            // Keeping everything as integers avoids ap_fixed truncation
            // on intermediate products.

            // Y[k]: received Q1.14 sample
            ap_int<16> y_re = fft_re[k];
            ap_int<16> y_im = fft_im[k];

            // X[k]: known DMRS pilot Q1.14 bits
            ap_int<16> x_re = (ap_int<16>)DMRS_RE[m].range(15, 0);
            ap_int<16> x_im = (ap_int<16>)DMRS_IM[m].range(15, 0);

            // H[k]: channel estimate Q1.14 bits (beam 0, ant 0)
            ap_int<16> hr = (ap_int<16>)h_re[k].range(15, 0);
            ap_int<16> hi = (ap_int<16>)h_im[k].range(15, 0);

            // S[k] = H[k] * X[k] — Q1.14 × Q1.14 = Q2.28, fits in ap_int<32>
            // Rounding shift (+0x2000 = half LSB) minimises residual E[k]
            // in a clean channel. Truncation causes systematic bias that
            // inflates nse_pow at high SNR, making HighSNR test fail.
            ap_int<32> s_re_full = hr * x_re - hi * x_im;
            ap_int<32> s_im_full = hr * x_im + hi * x_re;
            ap_int<16> s_re = (ap_int<16>)((s_re_full + 0x2000) >> 14);
            ap_int<16> s_im = (ap_int<16>)((s_im_full + 0x2000) >> 14);

            // E[k] = Y[k] - S[k] — both Q1.14, result Q1.14
            ap_int<16> e_re = y_re - s_re;
            ap_int<16> e_im = y_im - s_im;

            // Power: Q1.14 × Q1.14 = Q2.28, accumulate in ap_int<48>
            // Max per pilot: (2^15)^2 * 2 = 2^31, sum of 100: ~2^38 — fits
            sig_pow += (accum_t)(s_re * s_re) + (accum_t)(s_im * s_im);
            nse_pow += (accum_t)(e_re * e_re) + (accum_t)(e_im * e_im);
        }

        // ── Compute Q16.16 SNR ratio ──────────────────────────────────────────
        // Q16.16 format: max representable value = 65535.9999 (~48dB linear)
        // If SNR_linear > 65535, the (sig_pow<<16)/nse_pow result overflows
        // ap_uint<32> and produces a garbage truncated value.
        //
        // Saturate condition: sig_pow / nse_pow > 65535
        //   ↔ sig_pow > nse_pow * 65535
        // This covers both zero-noise and high-SNR overflow cases.
        if (nse_pow <= 0 || sig_pow > (accum_t)((ap_uint<64>)nse_pow * 65535)) {
            snr_out = 0xFFFFFFFF;   // saturate — SNR > 48dB
        } else {
            // Safe to shift: result guaranteed < 2^32
            ap_uint<64> numerator = (ap_uint<64>)((ap_uint<48>)sig_pow) << 16;
            snr_out = (snr_t)(numerator / (ap_uint<48>)nse_pow);
        }
    }
    // Non-DMRS symbols: snr_out retains its previous value (AXI-Lite register
    // holds last written value — PS always reads the most recent slot's SNR)
}
