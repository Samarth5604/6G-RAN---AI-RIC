#ifndef MLKEM_TYPES_H
#define MLKEM_TYPES_H

#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

// --- ML-KEM-768 Parameters (FIPS 203) ---
#define N 256
#define K 3
#define Q 3329

// --- Mathematical Types ---
typedef ap_int<16> poly_coeff;
typedef poly_coeff poly[N];

// --- AXI-Stream Structure ---
// Defines the physical FPGA wires for high-speed data transfer
//
// OUTPUT WIDTH FIX (8 bytes -> 4 bytes):
// The original struct:
//   ap_uint<32> data;  +  ap_uint<1> last;
// totals 33 bits. HLS rounds struct-based AXI-Stream to the next
// power-of-two boundary, producing a 64-bit (8-byte) TDATA bus.
// Vivado FFT IP requires exactly 32-bit (4-byte) TDATA.
//
// Fix: use ap_axiu<32,0,0,0> from ap_axi_sdata.h.
// This is Xilinx's standard AXI-Stream helper type where the template
// parameter is the TDATA width in bits. It correctly maps to:
//   .data  -> TDATA  (32 bits / 4 bytes  -- Vivado FFT compatible)
//   .last  -> TLAST  (1 bit sideband, does NOT add to TDATA width)
//   .keep  -> TKEEP  (4 bits, one per byte)
//   .strb  -> TSTRB  (4 bits)
// All other code (mlkem_ip.cpp, mlkem_test.cpp) is unchanged because
// the .data and .last field names are identical to the original struct.
typedef ap_axiu<32,0,0,0> axis_pkt;

// --- Montgomery Constants ---
// Used for modular reduction without expensive division
const ap_int<16> Q_INV = 62209;  // -1/Q mod 2^16
const ap_int<16> R_MOD_Q = 2285; // 2^16 mod Q

// --- Hardware-Optimized Math Functions ---
/**
 * Montgomery Reduction: x * R^-1 mod Q
 * Marked 'static inline' to prevent "duplicate symbol" errors
 * when included in multiple .cpp files.
 */
static inline poly_coeff montgomery_reduce(ap_int<32> a) {
    #pragma HLS INLINE
    ap_int<16> u = (ap_int<16>)(a * Q_INV);
    ap_int<32> t = a - (ap_int<32>)u * Q;
    return (poly_coeff)(t >> 16);
}

// --- Top Level Function Prototype ---
void mlkem_top(
    int mode,
    hls::stream<axis_pkt> &in_stream,
    hls::stream<axis_pkt> &out_stream
);

#endif // MLKEM_TYPES_H
