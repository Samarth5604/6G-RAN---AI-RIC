#ifndef BEAMFORMER_H
#define BEAMFORMER_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>

// ─────────────────────────────────────────────────────────────────────────────
// MIMO Configuration — compile-time constants ONLY.
//
//   Runtime-variable antenna counts were the primary cause of ~3.4us latency.
//   HLS cannot statically schedule or fully unroll a loop with a variable
//   bound — it falls back to a state machine that adds hundreds of cycles.
//
//   To change MIMO config: edit NUM_ANT here and re-synthesise. That's it.
//   Supported: 2, 4, 8, 16, 32  (for 32x8 set NUM_ANT=32, NUM_BEAM=8)
// ─────────────────────────────────────────────────────────────────────────────
#define NUM_ANT    2        // RX antennas in (= TX beams out for square MIMO)
#define NUM_BEAM   2        // TX beams out  (set < NUM_ANT for asymmetric)
#define FFT_SIZE   1024     // Must match xfft IP setting

// ─────────────────────────────────────────────────────────────────────────────
// Data types
//   weight_t : Q1.14 fixed-point  — maps to 1 DSP48 per multiply
//   sample_t : 16-bit signed      — matches FFT output word format
//   accum_t  : 32-bit signed      — headroom for NUM_ANT accumulations
// ─────────────────────────────────────────────────────────────────────────────
typedef ap_fixed<16, 2>  weight_t;
typedef ap_int<16>       sample_t;
typedef ap_int<32>       accum_t;


// ─────────────────────────────────────────────────────────────────────────────
// Weight storage — THREE dimensions: [beam][antenna][subcarrier]
//   Internal buffer only — not exposed as a top-level port.
//   Loaded from weight_stream before each processing frame.
//
//   BRAM usage: NUM_BEAM × NUM_ANT × FFT_SIZE × 16-bit × 2 (re+im)
//     2×2  config: 2 × 2 × 1024 × 2 × 2bytes = 16KB = 8 BRAM-18K
// ─────────────────────────────────────────────────────────────────────────────
typedef weight_t weight_arr_t[NUM_BEAM][NUM_ANT][FFT_SIZE];

// ─────────────────────────────────────────────────────────────────────────────
// Total weight words received per frame:
//   NUM_BEAM × NUM_ANT × FFT_SIZE = 2 × 2 × 1024 = 4096 words
//
// Weight stream input format — matches channel estimator output exactly:
//   Order  : [beam][ant][subcarrier] — outer to inner
//   Packing: bits[15:0]  = weight_re (Q1.14)
//            bits[31:16] = weight_im (Q1.14)
//   TLAST  : asserted on word 4095 (final word of weight frame)
// ─────────────────────────────────────────────────────────────────────────────
#define WEIGHT_STREAM_LEN (NUM_BEAM * NUM_ANT * FFT_SIZE)   // 4096

// ─────────────────────────────────────────────────────────────────────────────
// AXI-Stream type — 32-bit TDATA + TLAST
//   ap_axiu<32,0,0,0>: TDATA=32bit, TLAST present, no TID/TUSER/TDEST
//   Used for both IQ data streams and the weight stream.
//   Members: .data ap_uint<32>, .last ap_uint<1>, .keep ap_uint<4>
// ─────────────────────────────────────────────────────────────────────────────
#include "ap_axi_sdata.h"
typedef ap_axiu<32, 0, 0, 0> axis_t;

// ─────────────────────────────────────────────────────────────────────────────
// Top-level
//
//   in_stream[NUM_ANT]  : IQ data from FFT (one stream per RX antenna)
//   out_stream[NUM_BEAM]: beamformed IQ output (one stream per TX beam)
//   weight_stream       : packed weight input from channel estimator
//                         Must be fully received before in_stream is processed
// ─────────────────────────────────────────────────────────────────────────────
void beamformer_top(
    hls::stream<axis_t> in_stream[NUM_ANT],
    hls::stream<axis_t> out_stream[NUM_BEAM],
    hls::stream<axis_t> &weight_stream
);

#endif
