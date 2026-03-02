#ifndef SNR_MONITOR_H
#define SNR_MONITOR_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include "ap_axi_sdata.h"

// ─────────────────────────────────────────────────────────────────────────────
// System parameters — must match FFT, chan_est, and beamformer configuration
// ─────────────────────────────────────────────────────────────────────────────
#define FFT_SIZE        1024
#define NUM_ANT         2
#define NUM_BEAM        2
#define NUM_PILOTS      100     // 3GPP NR 100RB, DMRS Type 1 port 0

// ─────────────────────────────────────────────────────────────────────────────
// Weight stream geometry — must match chan_est output
//   Order  : [beam][ant][subcarrier], 4096 words total
//   Packing: bits[15:0]=re (Q1.14), bits[31:16]=im (Q1.14)
// ─────────────────────────────────────────────────────────────────────────────
#define WEIGHT_STREAM_LEN  (NUM_BEAM * NUM_ANT * FFT_SIZE)   // 4096

// ─────────────────────────────────────────────────────────────────────────────
// Data types
//   sample_t  : Q1.14 fixed-point — matches FFT output and weight format
//   accum_t   : Q17.14 — headroom for sum of 100 squared Q1.14 values
//               max single term: (0.7071 * 0.7071)² * 16384² ≈ 2^27
//               sum of 100:  ≈ 2^34 — use 48-bit accumulator
//   snr_t     : 32-bit unsigned ratio, Q16.16 fixed-point
//               integer part holds SNR up to 65535 linear (~48dB)
//               fractional part gives 1/65536 resolution
// ─────────────────────────────────────────────────────────────────────────────
typedef ap_fixed<16, 2>  sample_t;
typedef ap_int<48>       accum_t;
typedef ap_uint<32>      snr_t;
typedef ap_axiu<32, 0, 0, 0> axis_t;

// ─────────────────────────────────────────────────────────────────────────────
// SNR Monitor — per-slot SNR estimation from DMRS pilot residuals
//
// Algorithm:
//   For each pilot k (100 positions):
//     S[k] = H[k] * X[k]          (reconstructed signal, using beam 0 ant 0)
//     E[k] = Y[k] - S[k]          (residual = noise estimate)
//     sig_pow += |S[k]|²           (signal power accumulation)
//     nse_pow += |E[k]|²           (noise power accumulation)
//   SNR_out = (sig_pow << 16) / nse_pow   (Q16.16 fixed-point ratio)
//
// Inputs:
//   fft_in[NUM_ANT]  : full 1024-sample FFT stream (tapped before sc_mapper)
//                      Monitor reads all 1024 samples, processes only pilots
//   weight_stream    : 4096-word weight stream from chan_est
//                      Monitor reads beam 0, ant 0 weights only (words 0..1023)
//                      and discards the remaining 3072 words
//   symbol_num       : OFDM symbol index 0–13 from PS GPIO
//                      Monitor only computes on symbol 2 (DMRS)
//
// Output:
//   snr_out          : AXI-Lite register, Q16.16 SNR ratio
//                      Updated once per DMRS symbol (~every 125µs at μ=3)
//                      PS reads and converts: SNR_dB = 10 * log10(snr_out / 65536.0)
//
// Note on antenna/beam selection:
//   Uses beam 0, antenna 0 weights only for SNR estimation.
//   In a 2×2 system this is representative of overall channel quality.
//   A future revision could average across all antennas for robustness.
// ─────────────────────────────────────────────────────────────────────────────
void snr_monitor_top(
    hls::stream<axis_t> fft_in[NUM_ANT],
    hls::stream<axis_t> &weight_stream,
    ap_uint<4>           symbol_num,
    snr_t               &snr_out
);

#endif
