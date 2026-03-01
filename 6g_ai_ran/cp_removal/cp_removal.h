#ifndef CP_REMOVAL_H
#define CP_REMOVAL_H

#include <ap_int.h>
#include <hls_stream.h>
#include "ap_axi_sdata.h"

// ─────────────────────────────────────────────────────────────────────────────
// Parameters
// ─────────────────────────────────────────────────────────────────────────────
#define FFT_SIZE     1024
#define CP_LEN       144
#define SYMBOL_LEN   (FFT_SIZE + CP_LEN)   // 1168 samples per symbol on wire

// ─────────────────────────────────────────────────────────────────────────────
// AXI-Stream type — 32-bit IQ, matches FFT and beamformer interfaces
//   bits[15:0]  = I (real, 16-bit signed)
//   bits[31:16] = Q (imag, 16-bit signed)
// ─────────────────────────────────────────────────────────────────────────────
typedef ap_axiu<32, 0, 0, 0> axis_t;

// ─────────────────────────────────────────────────────────────────────────────
// CP Removal — RX path
//
//   Strips the first CP_LEN (144) samples from each incoming OFDM symbol
//   and forwards the remaining FFT_SIZE (1024) samples to the FFT.
//
//   in_stream  : raw samples from axis_data_fifo (1168 samples per symbol)
//   out_stream : CP-stripped samples to xfft S_AXIS_DATA (1024 samples)
//
//   TLAST:
//     Expects TLAST on input sample 1167 (last of full symbol)
//     Asserts TLAST on output sample 1023 (last sample sent to FFT)
// ─────────────────────────────────────────────────────────────────────────────
void cp_removal(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream
);

#endif
