/*
 * beamformer_tb.cpp — testbench v3, weight input via AXI-Stream
 *
 * Weights are now packed into a single stream matching chan_est output format:
 *   Order  : [beam][ant][subcarrier]
 *   Packing: bits[15:0]=re, bits[31:16]=im
 *
 * Same beam verification as before:
 *   Beam 0: w=1+0j → output = normalised sum of antennas
 *   Beam 1: w=0+1j → output = 90° rotated, distinct from beam 0
 */

#include <iostream>
#include <cstdlib>
#include <cassert>
#include "beamformer.h"

#define TOLERANCE 2
static int errors = 0;

static void check(const char *label, int got, int expected) {
    if (abs(got - expected) > TOLERANCE) {
        std::cout << "FAIL [" << label << "] got=" << got
                  << " expected=" << expected << "\n";
        errors++;
    }
}

int main() {
    hls::stream<axis_t> in_stream[NUM_ANT];
    hls::stream<axis_t> out_stream[NUM_BEAM];
    hls::stream<axis_t> weight_stream;

    // ── Build weight stream: [beam][ant][subcarrier] order ────────────────────
    // Beam 0: weight = 1+0j for all ant and subcarriers
    // Beam 1: weight = 0+1j for all ant and subcarriers
    for (int b = 0; b < NUM_BEAM; b++) {
        for (int a = 0; a < NUM_ANT; a++) {
            for (int k = 0; k < FFT_SIZE; k++) {
                weight_t wr, wi;
                if (b == 0) { wr = weight_t(1.0); wi = weight_t(0.0); }
                else        { wr = weight_t(0.0); wi = weight_t(1.0); }

                axis_t w;
                w.data.range(15,  0) = wr.range(15, 0);
                w.data.range(31, 16) = wi.range(15, 0);
                w.keep = 0xF;
                bool is_last = (b == NUM_BEAM-1) &&
                               (a == NUM_ANT-1)  &&
                               (k == FFT_SIZE-1);
                w.last = is_last ? ap_uint<1>(1) : ap_uint<1>(0);
                weight_stream.write(w);
            }
        }
    }

    // ── Build input streams: ant0=100+50j, ant1=200+75j ──────────────────────
    for (int k = 0; k < FFT_SIZE; k++) {
        for (int a = 0; a < NUM_ANT; a++) {
            axis_t s;
            s.data.range(15,  0) = (a == 0) ? (ap_uint<16>)100 : (ap_uint<16>)200;
            s.data.range(31, 16) = (a == 0) ? (ap_uint<16>)50  : (ap_uint<16>)75;
            s.last = (k == FFT_SIZE - 1) ? ap_uint<1>(1) : ap_uint<1>(0);
            s.keep = 0xF;
            in_stream[a].write(s);
        }
    }

    beamformer_top(in_stream, out_stream, weight_stream);

    // ── Verify outputs ────────────────────────────────────────────────────────
    // Beam 0 (w=1+0j):
    //   acc_re = 100+200=300, acc_im = 50+75=125 → >>1: re=150, im=62
    // Beam 1 (w=0+1j):
    //   acc_re = 50+75=125,   acc_im = -(100+200)=-300 → >>1: re=62, im=-150
    for (int k = 0; k < FFT_SIZE; k++) {
        { axis_t r = out_stream[0].read();
          check("b0_re", (int)(sample_t)r.data.range(15,  0),  150);
          check("b0_im", (int)(sample_t)r.data.range(31, 16),   62); }
        { axis_t r = out_stream[1].read();
          check("b1_re", (int)(sample_t)r.data.range(15,  0),   62);
          check("b1_im", (int)(sample_t)r.data.range(31, 16), -150); }
    }

    if (errors == 0)
        std::cout << "PASS: Both beams verified, weight stream interface correct.\n";
    else
        std::cout << "FAIL: " << errors << " error(s).\n";

    return errors ? 1 : 0;
}
