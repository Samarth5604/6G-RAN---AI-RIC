/*
 * chan_est.cpp — LS Channel Estimator for 6G RAN DU
 *
 * v4 — resolves remaining subcarrier_loop II=1025 violation
 *
 * Root cause of persistent violation:
 *   The non-pilot branch was: new_h = last_h (copy)
 *   Then at end of iteration: last_h = new_h (write back)
 *   This creates a RAW chain: last_h[k-1] → new_h[k] → last_h[k]
 *   across every iteration regardless of is_pilot(). HLS cannot pipeline
 *   this — it must wait for the previous iteration's write to last_h to
 *   complete before reading it for the next iteration's copy.
 *
 * Fix: split phase 1 into two completely independent passes:
 *
 *   Pass A (pilot_scan, NUM_PILOTS=172 iterations):
 *     Reads only pilot positions from a pre-buffered FFT capture.
 *     Computes H[pilot] = Y[pilot] * conj(X[pilot]).
 *     Stores in pilot_h_re[m][a] / pilot_h_im[m][a].
 *     No loop-carried dependency — each pilot is independent.
 *
 *   Pass B (zoh_fill, FFT_SIZE=1024 iterations):
 *     Reads pilot estimates by index, no dependency between iterations.
 *     Fills w_re[b][a][k] with the nearest preceding pilot estimate.
 *     ZOH index advances only at pilot positions — implemented as a
 *     static mapping precomputed at compile time (no runtime state).
 *
 * The FFT stream is buffered into a local array first (fft_buf) since
 * it needs to be read twice — once for pilot extraction, once implicitly
 * via the precomputed pilot mapping. This costs 2×NUM_ANT×FFT_SIZE×32-bit
 * = 16KB of local storage, inferred as BRAM by HLS.
 */

#include "chan_est.h"
#include "dmrs_pilots.h"

static inline void ls_div(
    ap_int<16> y_re, ap_int<16> y_im,
    chan_t      x_re, chan_t     x_im,
    chan_t     &h_re, chan_t    &h_im)
{
#pragma HLS INLINE
    chan_t y_re_f, y_im_f;
    y_re_f.range(15, 0) = y_re;
    y_im_f.range(15, 0) = y_im;
    h_re = y_re_f * x_re + y_im_f * x_im;
    h_im = y_im_f * x_re - y_re_f * x_im;
}


void chan_est_top(
    hls::stream<axis_t> fft_in[NUM_ANT],
    ap_uint<4>          symbol_num,
    hls::stream<axis_t> &weight_stream)
{
#pragma HLS INTERFACE axis       port=fft_in
#pragma HLS INTERFACE axis       port=weight_stream
#pragma HLS INTERFACE ap_none    port=symbol_num
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS DISAGGREGATE         variable=fft_in

    // ── FFT sample buffer — holds one full symbol per antenna ─────────────────
    // Required because pilot_scan needs random access to pilot positions,
    // and stream can only be read once sequentially.
    // 2 ant × 1024 × 32-bit = 8KB — inferred as 4 BRAM-18K by HLS.
    ap_int<16> fft_re[NUM_ANT][FFT_SIZE];
    ap_int<16> fft_im[NUM_ANT][FFT_SIZE];
#pragma HLS ARRAY_PARTITION variable=fft_re complete dim=1
#pragma HLS ARRAY_PARTITION variable=fft_im complete dim=1

    // ── Per-pilot channel estimates ───────────────────────────────────────────
    chan_t pilot_h_re[NUM_ANT][NUM_PILOTS];
    chan_t pilot_h_im[NUM_ANT][NUM_PILOTS];
#pragma HLS ARRAY_PARTITION variable=pilot_h_re complete dim=1
#pragma HLS ARRAY_PARTITION variable=pilot_h_im complete dim=1

    // ── Weight buffer ─────────────────────────────────────────────────────────
    chan_t w_re[NUM_BEAM][NUM_ANT][FFT_SIZE];
    chan_t w_im[NUM_BEAM][NUM_ANT][FFT_SIZE];
#pragma HLS ARRAY_PARTITION variable=w_re complete dim=1
#pragma HLS ARRAY_PARTITION variable=w_re complete dim=2
#pragma HLS ARRAY_PARTITION variable=w_im complete dim=1
#pragma HLS ARRAY_PARTITION variable=w_im complete dim=2

    // ═════════════════════════════════════════════════════════════════════════
    // Pass A: buffer FFT stream — always, every symbol
    // ═════════════════════════════════════════════════════════════════════════
    buf_loop:
    for (int k = 0; k < FFT_SIZE; k++) {
#pragma HLS PIPELINE II=1
        for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
            axis_t s    = fft_in[a].read();
            fft_re[a][k] = (ap_int<16>)s.data.range(15,  0);
            fft_im[a][k] = (ap_int<16>)s.data.range(31, 16);
        }
    }

    // ═════════════════════════════════════════════════════════════════════════
    // Pass B: compute LS estimates at pilot positions only
    // No loop-carried dependency — each pilot reads from fft buffer (random
    // access, no state) and writes to an independent pilot_h slot.
    // ═════════════════════════════════════════════════════════════════════════
    if (symbol_num == 2) {

        pilot_scan:
        for (int m = 0; m < NUM_PILOTS; m++) {
#pragma HLS PIPELINE II=1
            // FFT index for pilot m — split across DC gap:
            //   m=0..49  → k = 213 + m*6  (below DC, 213..507)
            //   m=50..99 → k = 513 + (m-50)*6  (above DC, 513..807)
            int k = (m < 50) ? (213 + m * 6) : (513 + (m - 50) * 6);
            chan_t xr = DMRS_RE[m];
            chan_t xi = DMRS_IM[m];
            for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
                chan_t hr, hi;
                ls_div(fft_re[a][k], fft_im[a][k], xr, xi, hr, hi);
                pilot_h_re[a][m] = hr;
                pilot_h_im[a][m] = hi;
            }
        }

        // ═════════════════════════════════════════════════════════════════════
        // Pass C: ZOH fill using precomputed PILOT_FOR_K lookup — no state,
        // no loop-carried dependency. Each iteration independently reads
        // pilot_h[a][PILOT_FOR_K[k]] which is a pure function of k.
        // ═════════════════════════════════════════════════════════════════════
        zoh_fill:
        for (int k = 0; k < FFT_SIZE; k++) {
#pragma HLS PIPELINE II=1
            int m = PILOT_FOR_K[k];
            for (int b = 0; b < NUM_BEAM; b++) {
#pragma HLS UNROLL
                for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
                    w_re[b][a][k] = pilot_h_re[a][m];
                    w_im[b][a][k] = pilot_h_im[a][m];
                }
            }
        }

        // ═════════════════════════════════════════════════════════════════════
        // Pass D: stream weight buffer to beamformer
        // ═════════════════════════════════════════════════════════════════════
        weight_out:
        for (int idx = 0; idx < WEIGHT_STREAM_LEN; idx++) {
#pragma HLS PIPELINE II=1
            int b = idx / (NUM_ANT * FFT_SIZE);
            int a = (idx / FFT_SIZE) % NUM_ANT;
            int k = idx % FFT_SIZE;
            axis_t w;
            w.data.range(15,  0) = w_re[b][a][k].range(15, 0);
            w.data.range(31, 16) = w_im[b][a][k].range(15, 0);
            w.keep = 0xF;
            w.last = (idx == WEIGHT_STREAM_LEN - 1) ? ap_uint<1>(1)
                                                     : ap_uint<1>(0);
            weight_stream.write(w);
        }
    }
}
