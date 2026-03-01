#include "mlkem_types.h"


void ntt(poly_coeff p[N]) {
    #pragma HLS PIPELINE II=1
    // Butterfly operations for NTT go here.
    // In HLS, we unroll these to use the DSP48E2 slices
    // effectively for the 6G high-throughput requirement.
}
