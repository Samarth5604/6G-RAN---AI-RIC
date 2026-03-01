/*
 * cp_removal.cpp — Cyclic Prefix Removal for 6G RAN DU (RX path)
 *
 * ── What it does ─────────────────────────────────────────────────────────────
 *
 *  Each OFDM symbol arriving from the ADC/FIFO is SYMBOL_LEN=1168 samples:
 *    [  CP (144 samples)  |  FFT data (1024 samples)  ]
 *
 *  This IP discards the first 144 samples and forwards the remaining 1024
 *  to the FFT. No arithmetic, no storage — just a gated stream pass-through.
 *
 * ── State machine ────────────────────────────────────────────────────────────
 *
 *  Phase 1 — cp_discard (144 cycles):
 *    Read and discard. Input samples are consumed but nothing is written
 *    to out_stream. HLS infers this as a read-only pipeline stage.
 *
 *  Phase 2 — cp_forward (1024 cycles):
 *    Read and forward. Each sample is passed through with TLAST
 *    asserted on the final sample (i == FFT_SIZE-1).
 *
 * ── Latency and throughput ───────────────────────────────────────────────────
 *
 *  II=1 on both phases — one sample consumed or forwarded per clock.
 *  First output appears after 144 + pipeline_fill cycles (~150ns at 266MHz).
 *  Full symbol processed in 1168 cycles = 4.4µs at 266MHz.
 *
 * ── ap_start ─────────────────────────────────────────────────────────────────
 *
 *  Tie HIGH in block design (xlconstant dout=1). This function processes
 *  one symbol per invocation and re-triggers immediately on completion,
 *  running as a continuous stream processor for the duration of operation.
 */

#include "cp_removal.h"

void cp_removal(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream)
{
#pragma HLS INTERFACE axis       port=in_stream
#pragma HLS INTERFACE axis       port=out_stream
#pragma HLS INTERFACE ap_ctrl_hs port=return

    // ── Phase 1: discard CP samples ───────────────────────────────────────────
    // Read CP_LEN samples and throw them away.
    // (void) cast suppresses the unused variable warning — HLS still
    // generates the correct read logic; the sample just goes nowhere.
    cp_discard:
    for (int i = 0; i < CP_LEN; i++)
    {
#pragma HLS PIPELINE II=1
        axis_t s = in_stream.read();
        (void)s;
    }

    // ── Phase 2: forward FFT_SIZE data samples ────────────────────────────────
    // Pass each sample through unchanged. Re-assert TLAST on the last
    // sample so the downstream FFT sees a clean 1024-sample frame boundary.
    // The incoming TLAST from the FIFO is deliberately overwritten here —
    // the FIFO may assert it on sample 1167 (end of full symbol), but the
    // FFT expects it on sample 1023 (end of stripped data).
    cp_forward:
    for (int i = 0; i < FFT_SIZE; i++)
    {
#pragma HLS PIPELINE II=1
        axis_t s = in_stream.read();
        s.last   = (i == FFT_SIZE - 1) ? ap_uint<1>(1) : ap_uint<1>(0);
        s.keep   = 0xF;
        out_stream.write(s);
    }
}
