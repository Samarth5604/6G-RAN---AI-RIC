#ifndef CP_INSERTION_H
#define CP_INSERTION_H

#include <ap_int.h>
#include <hls_stream.h>
#include "ap_axi_sdata.h"

// ─────────────────────────────────────────────────────────────────────────────
// Parameters
// ─────────────────────────────────────────────────────────────────────────────
#define FFT_SIZE     1024
#define CP_LEN       144
#define SYMBOL_LEN   (FFT_SIZE + CP_LEN)   // 1168 samples output per symbol
#define CP_START     (FFT_SIZE - CP_LEN)   // 880 — index of first CP sample

// ─────────────────────────────────────────────────────────────────────────────
// AXI-Stream type — 32-bit IQ
// ─────────────────────────────────────────────────────────────────────────────
typedef ap_axiu<32, 0, 0, 0> axis_t;

// ─────────────────────────────────────────────────────────────────────────────
// CP Insertion — TX path
//
//   Takes FFT_SIZE (1024) samples from the IFFT output, copies the last
//   CP_LEN (144) samples to the front, and outputs a full SYMBOL_LEN (1168)
//   sample OFDM symbol ready for the DAC / TX FIFO.
//
//   in_stream  : IFFT output (1024 samples, TLAST on sample 1023)
//   out_stream : OFDM symbol with CP prepended (1168 samples)
//
//   Output order:
//     Samples 0..143   : copy of input samples 880..1023  (the CP)
//     Samples 144..1167: input samples 0..1023            (the data)
//
//   TLAST:
//     Expects TLAST on input sample 1023
//     Asserts TLAST on output sample 1167 (last of full symbol)
//
//   Latency: 1024 cycles to buffer + 1168 cycles to output = 2192 cycles
//            ≈ 8.2µs at 266MHz. Well within 125µs slot budget for μ=3.
// ─────────────────────────────────────────────────────────────────────────────
void cp_insertion(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream
);

#endif
