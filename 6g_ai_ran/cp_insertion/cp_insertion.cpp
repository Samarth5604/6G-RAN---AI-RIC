/*
 * cp_insertion.cpp — Cyclic Prefix Insertion for 6G RAN DU (TX path)
 *
 * ── What it does ─────────────────────────────────────────────────────────────
 *
 *  Takes a 1024-sample IFFT output and prepends the last 144 samples as the
 *  cyclic prefix, producing a 1168-sample OFDM symbol for transmission:
 *
 *    Input : [  s0  s1  ...  s879  s880  ...  s1023  ]  (1024 samples)
 *    Output: [  s880 ... s1023  |  s0  s1  ...  s1023  ]
 *              └── CP (144) ──┘  └──── data (1024) ────┘
 *
 * ── Why buffering is unavoidable ─────────────────────────────────────────────
 *
 *  The CP is a copy of the END of the symbol (samples 880–1023).
 *  These samples are the last ones to arrive from the IFFT.
 *  The CP must be OUTPUT FIRST on the wire.
 *  Therefore the entire symbol must be received before any output can begin.
 *  There is no streaming shortcut for this — it is a fundamental property
 *  of cyclic prefix construction.
 *
 * ── Three-phase operation ─────────────────────────────────────────────────────
 *
 *  Phase 1 — buf_fill   (1024 cycles): read all IFFT samples into buffer
 *  Phase 2 — cp_out     (144 cycles) : output buf[880..1023] as the CP
 *  Phase 3 — data_out   (1024 cycles): output buf[0..1023] as the data body
 *
 *  Total: 2192 cycles = 8.2µs at 266MHz.
 *
 * ── Buffer implementation ─────────────────────────────────────────────────────
 *
 *  axis_t buf[FFT_SIZE] — 1024 × 32-bit = 4KB
 *  Partitioned cyclic factor=4 to allow 4 parallel reads/writes per cycle
 *  during the output phases. HLS will infer this as 2 BRAM-18K.
 *  If you need to save BRAM, add:
 *    #pragma HLS BIND_STORAGE variable=buf type=RAM_2P impl=LUTRAM
 *  This uses ~128 LUTs instead but may reduce achievable clock frequency.
 */

#include "cp_insertion.h"

void cp_insertion(
    hls::stream<axis_t> &in_stream,
    hls::stream<axis_t> &out_stream)
{
#pragma HLS INTERFACE axis       port=in_stream
#pragma HLS INTERFACE axis       port=out_stream
#pragma HLS INTERFACE ap_ctrl_hs port=return

    // ── Symbol buffer ─────────────────────────────────────────────────────────
    axis_t buf[FFT_SIZE];
#pragma HLS ARRAY_PARTITION variable=buf cyclic factor=4

    // ── Phase 1: fill buffer from IFFT output ─────────────────────────────────
    buf_fill:
    for (int i = 0; i < FFT_SIZE; i++)
    {
#pragma HLS PIPELINE II=1
        buf[i] = in_stream.read();
    }

    // ── Phase 2: output CP — last CP_LEN samples of the symbol ───────────────
    // buf[CP_START] = buf[880] is the first sample of the CP region.
    // TLAST is never set here — the symbol is not done yet.
    cp_out:
    for (int i = 0; i < CP_LEN; i++)
    {
#pragma HLS PIPELINE II=1
        axis_t s = buf[CP_START + i];
        s.last   = 0;
        s.keep   = 0xF;
        out_stream.write(s);
    }

    // ── Phase 3: output full data body ────────────────────────────────────────
    // TLAST asserted on the final sample of the complete OFDM symbol
    // (output sample 1167 = data sample 1023).
    data_out:
    for (int i = 0; i < FFT_SIZE; i++)
    {
#pragma HLS PIPELINE II=1
        axis_t s = buf[i];
        s.last   = (i == FFT_SIZE - 1) ? ap_uint<1>(1) : ap_uint<1>(0);
        s.keep   = 0xF;
        out_stream.write(s);
    }
}
