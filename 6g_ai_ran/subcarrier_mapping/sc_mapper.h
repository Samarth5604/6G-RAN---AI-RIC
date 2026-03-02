#ifndef SC_MAPPER_H
#define SC_MAPPER_H

#include <ap_int.h>
#include <hls_stream.h>
#include "ap_axi_sdata.h"

// ─────────────────────────────────────────────────────────────────────────────
// System parameters
// ─────────────────────────────────────────────────────────────────────────────
#define FFT_SIZE        1024    // full FFT output width
#define NUM_ANT         2       // RX antennas — one stream per antenna

// ─────────────────────────────────────────────────────────────────────────────
// 3GPP NR resource grid — 1024-point FFT, 100RB, μ=3, DMRS Type 1 port 0
//
//   Lower guard band : subcarriers   0 – 211   (212 subcarriers)
//   Occupied band    : subcarriers 212 – 811   (600 subcarriers)
//   DC null          : subcarrier  512          (1 subcarrier)
//   Upper guard band : subcarriers 812 – 1023  (212 subcarriers)
//
//   DMRS pilots within occupied band:
//     First pilot: 213 (occupied_start + DMRS_OFFSET = 212 + 1)
//     Spacing: every 6th subcarrier
//     Count: 100 pilots (50 below DC, 50 above DC)
//
//   Data subcarriers = 600 occupied − 1 DC − 100 pilots = 499
// ─────────────────────────────────────────────────────────────────────────────
#define NUM_DATA_SC     499     // data-only subcarriers in compact output

// ─────────────────────────────────────────────────────────────────────────────
// AXI-Stream type — 32-bit IQ, matches FFT output and beamformer input
//   bits[15:0]  = I (real, 16-bit signed Q1.14)
//   bits[31:16] = Q (imag, 16-bit signed Q1.14)
// ─────────────────────────────────────────────────────────────────────────────
typedef ap_axiu<32, 0, 0, 0> axis_t;

// ─────────────────────────────────────────────────────────────────────────────
// RX Subcarrier Mapper — extracts data subcarriers from FFT output
//
//   fft_in[NUM_ANT]   : full 1024-sample FFT output (one stream per antenna)
//   data_out[NUM_ANT] : compact 499-sample data stream (one per antenna)
//
//   Operation:
//     Reads all 1024 subcarriers from each antenna stream.
//     Forwards only the 499 data subcarrier positions to data_out.
//     Guard bands, DC null, and DMRS pilots are consumed and discarded.
//
//   TLAST:
//     Input  : expected on FFT sample 1023
//     Output : asserted on data_out sample 498 (last data subcarrier)
//
//   Latency:
//     First output appears after reading up to first data subcarrier (k=212)
//     = 212 cycles discard + pipeline fill ≈ 213 cycles ≈ 0.85µs at 250MHz
//     Full frame: 1024 cycles input = 4.10µs, 499 cycles output overlap
// ─────────────────────────────────────────────────────────────────────────────
void sc_mapper_rx(
    hls::stream<axis_t> fft_in[NUM_ANT],
    hls::stream<axis_t> data_out[NUM_ANT]
);

#endif
