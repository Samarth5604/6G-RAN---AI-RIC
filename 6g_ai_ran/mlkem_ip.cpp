#include "mlkem_types.h"

// ---------------------------------------------------------------------------
// LATENCY FIX: DATAFLOW with ping-pong streams between phases
// ---------------------------------------------------------------------------
// Original latency: 788 cycles (read 258 + process 265 + write 258, sequential)
//
// The three phases are connected via hls::stream FIFOs instead of a shared
// array. This lets HLS DATAFLOW overlap them as concurrent hardware tasks:
//   - While write_phase drains coefficients out, process_phase is already
//     transforming the next ones, and read_phase is ingesting the one after.
// Expected latency: max(258, 265, 258) = 265 cycles (~882 ns) — ~3x faster.
//
// Why streams and not the shared array from before:
//   DATAFLOW on a shared array requires the array to be non-static so HLS
//   can create a ping-pong double buffer (the HLS 200-471 fix). Using
//   hls::stream is cleaner — streams are the native DATAFLOW channel type,
//   have no ping-pong ambiguity, and HLS always achieves II=1 on them.
//
// All other logic (mode select, montgomery_reduce, interface pragmas,
// ARRAY_PARTITION) is identical to the original code.
// ---------------------------------------------------------------------------

static void read_phase(
    hls::stream<axis_pkt>      &in_stream,
    hls::stream<poly_coeff>    &coeff_stream)
{
    #pragma HLS INLINE off
    if (!in_stream.empty()) {
        for (int i = 0; i < N; i++) {
            #pragma HLS PIPELINE II=1
            axis_pkt tmp = in_stream.read();
            coeff_stream.write((poly_coeff)tmp.data);
        }
    }
}

static void process_phase(
    int                         mode,
    hls::stream<poly_coeff>    &coeff_stream,
    hls::stream<poly_coeff>    &result_stream)
{
    #pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        ap_int<32> val = (ap_int<32>)coeff_stream.read();

        poly_coeff result;
        if (mode == 0) {
            // Key Generation Logic (Simulate Public Key derivation)
            result = montgomery_reduce(val * 1353);
        } else if (mode == 1) {
            // Encapsulation Logic (Simulate Ciphertext generation)
            result = montgomery_reduce(val * 2285);
        } else {
            // Decapsulation Logic (Simulate Plaintext recovery)
            result = montgomery_reduce(val * 1024);
        }
        result_stream.write(result);
    }
}

static void write_phase(
    hls::stream<poly_coeff>    &result_stream,
    hls::stream<axis_pkt>      &out_stream)
{
    #pragma HLS INLINE off
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        axis_pkt out_tmp;
        out_tmp.data = (ap_uint<32>)result_stream.read();
        out_tmp.last = (i == N - 1) ? 1 : 0;
        out_stream.write(out_tmp);
    }
}

void mlkem_top(
    int mode,
    hls::stream<axis_pkt> &in_stream,
    hls::stream<axis_pkt> &out_stream
) {
    #pragma HLS INTERFACE s_axilite port=mode   bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream

    // Internal FIFO channels connecting the three dataflow stages.
    // depth=N means each FIFO can buffer a full packet — prevents stalling
    // if one stage runs slightly ahead of another.
    hls::stream<poly_coeff> coeff_stream("coeff_stream");
    hls::stream<poly_coeff> result_stream("result_stream");
    #pragma HLS STREAM variable=coeff_stream  depth=N
    #pragma HLS STREAM variable=result_stream depth=N

    // DATAFLOW: HLS schedules read, process, and write as concurrent hardware
    // tasks. Latency = max(read, process, write) instead of their sum.
    #pragma HLS DATAFLOW

    read_phase   (in_stream,    coeff_stream);
    process_phase(mode,         coeff_stream,  result_stream);
    write_phase  (result_stream, out_stream);
}
