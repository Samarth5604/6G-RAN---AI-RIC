#ifndef CHAN_EST_H
#define CHAN_EST_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include "ap_axi_sdata.h"

// ─────────────────────────────────────────────────────────────────────────────
// System parameters — must match FFT and beamformer configuration
// ─────────────────────────────────────────────────────────────────────────────
#define FFT_SIZE        1024
#define NUM_ANT         2
#define NUM_BEAM        2

// ─────────────────────────────────────────────────────────────────────────────
// DMRS parameters — 3GPP Type 1, Symbol 2, Cell ID = 0
//   Pilot spacing : every 6th subcarrier
//   Pilot count   : 172 across 1024 subcarriers
//   First pilot   : subcarrier 1 (port 0, Type 1)
//   Reference     : 3GPP TS 38.211 Section 7.4.1.1
// ─────────────────────────────────────────────────────────────────────────────
#define DMRS_SPACING    6
#define DMRS_OFFSET     1
#define NUM_PILOTS      172

// ─────────────────────────────────────────────────────────────────────────────
// Data types
//   chan_t : Q1.14 fixed-point — matches beamformer weight_t exactly
//   axis_t : 32-bit AXI-Stream — used for both FFT input and weight output
// ─────────────────────────────────────────────────────────────────────────────
typedef ap_fixed<16, 2>      chan_t;
typedef ap_axiu<32, 0, 0, 0> axis_t;

// ─────────────────────────────────────────────────────────────────────────────
// Weight stream output format — matches beamformer S_AXIS_WEIGHTS exactly
//
//   Total words : NUM_BEAM × NUM_ANT × FFT_SIZE = 4096
//
//   Output order:
//     for b in 0..NUM_BEAM-1
//       for a in 0..NUM_ANT-1
//         for k in 0..FFT_SIZE-1
//           bits[15:0]  = weight_re (Q1.14)
//           bits[31:16] = weight_im (Q1.14)
//
//   TLAST asserted on word 4095 (final word of the weight frame)
// ─────────────────────────────────────────────────────────────────────────────
#define WEIGHT_STREAM_LEN  (NUM_BEAM * NUM_ANT * FFT_SIZE)   // 4096

// ─────────────────────────────────────────────────────────────────────────────
// Top-level
//
//   fft_in[NUM_ANT]  : FFT output (one stream per RX antenna, 1024 samples)
//   symbol_num       : OFDM symbol index 0-13, driven by PS GPIO
//   weight_stream    : packed IQ weight output to beamformer S_AXIS_WEIGHTS
//                      Only written on DMRS symbol (symbol_num == 2)
//                      Silent on all other symbols — stream stays empty
// ─────────────────────────────────────────────────────────────────────────────
void chan_est_top(
    hls::stream<axis_t> fft_in[NUM_ANT],
    ap_uint<4>          symbol_num,
    hls::stream<axis_t> &weight_stream
);

#endif
