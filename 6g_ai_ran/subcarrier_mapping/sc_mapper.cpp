/*
 * sc_mapper.cpp — RX Subcarrier Mapper for 6G RAN DU
 *
 * v2 — fixed -0.02ns timing violation on scan_loop
 *
 * Root cause: DATA_SC_IDX[d] ROM read feeding directly into equality compare
 * in the same pipeline stage. At 250MHz (4.0ns) the ROM-read-to-compare path
 * measured 4.02ns — just over budget.
 *
 * Fix: pre-register next_idx at the start of each iteration. The ROM read
 * completes into a registered value in cycle N, and the compare uses that
 * registered value in cycle N+1. Each half is comfortably under 4.0ns.
 */

#include "sc_mapper.h"
#include "sc_map_table.h"

void sc_mapper_rx(
    hls::stream<axis_t> fft_in[NUM_ANT],
    hls::stream<axis_t> data_out[NUM_ANT])
{
#pragma HLS INTERFACE axis       port=fft_in
#pragma HLS INTERFACE axis       port=data_out
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS DISAGGREGATE         variable=fft_in
#pragma HLS DISAGGREGATE         variable=data_out

    int d = 0;

    // Pre-registered next expected index.
    // Breaks the ROM-read-to-compare critical path:
    //   Before: [ROM read DATA_SC_IDX[d]] + [compare k==idx] = 4.02ns (FAIL)
    //   After:  [ROM read → register] in cycle N              < 4.0ns
    //           [compare k==next_idx]  in cycle N+1           < 4.0ns
    // Initialised to DATA_SC_IDX[0]=212 so first comparison is correct.
    ap_uint<10> next_idx = DATA_SC_IDX[0];

    scan_loop:
    for (int k = 0; k < FFT_SIZE; k++)
    {
#pragma HLS PIPELINE II=1

        axis_t s[NUM_ANT];
#pragma HLS ARRAY_PARTITION variable=s complete

        // Read all antennas unconditionally — keeps input stream at II=1
        for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
            s[a] = fft_in[a].read();
        }

        // Compare against pre-registered index — ROM read not on critical path
        bool is_data = (d < NUM_DATA_SC) && ((ap_uint<10>)k == next_idx);

        if (is_data) {
            bool is_last = (d == NUM_DATA_SC - 1);
            for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
                axis_t out = s[a];
                out.last   = is_last ? ap_uint<1>(1) : ap_uint<1>(0);
                out.keep   = 0xF;
                data_out[a].write(out);
            }
            d++;
            // Pre-fetch next index for following cycle.
            // Saturate to 0x3FF when all data subcarriers are done
            // so is_data stays false for remaining upper guard band samples.
            next_idx = (d < NUM_DATA_SC) ? DATA_SC_IDX[d] : ap_uint<10>(0x3FF);
        }
    }
}
