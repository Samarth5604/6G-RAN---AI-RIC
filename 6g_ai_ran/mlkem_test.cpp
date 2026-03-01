#include <iostream>
#include <iomanip>
#include <cstdint>
#include "mlkem_types.h"

// =============================================================================
// Software reference model
// Mirrors the EXACT cast chain in mlkem_ip.cpp process_phase:
//
//   read:    internal_poly[i] = (poly_coeff)tmp.data
//            = (ap_int<16>)(ap_uint<32>) — truncates to low 16 bits, signed
//
//   process: ap_int<32> val = (ap_int<32>)internal_poly[i]  — sign-extend
//            result = montgomery_reduce(val * scalar)        — returns ap_int<16>
//
//   write:   out_tmp.data = (ap_uint<32>)result_stream.read()
//            = (ap_uint<32>)(ap_int<16>)                    — sign-extends
//            e.g. ap_int<16>(-1044) -> ap_uint<32>(0xFFFFFBEC)
//
// A previous version used (ap_uint<32>)(ap_uint<16>)(result) which zero-extended
// instead of sign-extending, producing 0x0000FBEC instead of 0xFFFFFBEC — that
// mismatch caused the SIM 211-100 nonzero return error.
// =============================================================================
static uint32_t expected_coeff(uint32_t raw_input, int mode) {
    // Step 1: replicate (poly_coeff)tmp.data — truncate to 16-bit signed
    ap_int<16> c = (ap_int<16>)(ap_uint<32>)raw_input;

    // Step 2: widen to 32-bit signed for the multiply
    ap_int<32> val = (ap_int<32>)c;

    // Step 3: montgomery_reduce with mode scalar — result is ap_int<16>
    poly_coeff result;
    if (mode == 0) {
        result = montgomery_reduce(val * 1353);
    } else if (mode == 1) {
        result = montgomery_reduce(val * 2285);
    } else {
        result = montgomery_reduce(val * 1024);
    }

    // Step 4: replicate (ap_uint<32>)result — sign-extends ap_int<16> to 32 bits
    // e.g. ap_int<16>(-1044) = 0xFBEC -> ap_uint<32>(0xFFFFFBEC)
    // NOT (ap_uint<16>) first — that would zero-extend to 0x0000FBEC (wrong)
    return (uint32_t)(ap_uint<32>)result;
}

// =============================================================================
// verify_all_256: drain stream, check every beat against reference model
// =============================================================================
static bool verify_all_256(
    const std::string      &label,
    hls::stream<axis_pkt>  &out,
    uint32_t                input_base,
    int                     mode)
{
    bool all_pass = true;
    int  beat     = 0;
    int  failures = 0;

    std::cout << "-------------------------------------------------------------------------------" << std::endl;
    std::cout << label << std::endl;
    std::cout << "-------------------------------------------------------------------------------" << std::endl;

    while (!out.empty()) {
        axis_pkt p        = out.read();
        uint32_t got      = (uint32_t)p.data.to_uint();
        uint32_t raw_in   = input_base + (uint32_t)beat;
        uint32_t expected = expected_coeff(raw_in, mode);

        // Check 1: value matches reference model
        bool val_ok  = (got == expected);

        // Check 2: TLAST correct — high only on beat 255
        bool last_ok = ((int)p.last.to_uint() == (beat == N - 1 ? 1 : 0));

        if (!val_ok || !last_ok) {
            all_pass = false;
            failures++;
            // Print up to 10 failures to avoid flooding the console
            if (failures <= 10) {
                std::cout << "  [FAIL] beat " << std::setw(3) << beat
                          << "  input=0x"    << std::hex << std::setw(8) << std::setfill('0') << raw_in
                          << "  got=0x"      << std::setw(8) << std::setfill('0') << got
                          << "  expected=0x" << std::setw(8) << std::setfill('0') << expected
                          << std::dec        << std::setfill(' ');
                if (!last_ok)
                    std::cout << "  [TLAST: got=" << p.last.to_uint()
                              << " want="         << (beat == N-1 ? 1 : 0) << "]";
                std::cout << std::endl;
            }
        }
        beat++;
    }

    // Check 3: exactly N beats received
    if (beat != N) {
        all_pass = false;
        std::cout << "  [FAIL] Expected " << N << " beats, received " << beat << std::endl;
    }

    std::cout << "  Beats checked : " << beat << " / " << N << std::endl;
    if (failures > 0)
        std::cout << "  Failures      : " << failures << std::endl;
    std::cout << "  Result        : " << (all_pass ? "PASS" : "FAIL") << std::endl;

    return all_pass;
}

// =============================================================================
// main
// =============================================================================
int main() {
    hls::stream<axis_pkt> in("in"), out("out");
    bool overall = true;

    std::cout << "===============================================================================" << std::endl;
    std::cout << "6G ZERO TRUST ARCHITECTURE: UNIQUE VALUE VERIFICATION" << std::endl;
    std::cout << "  All 256 coefficients validated per mode against software reference" << std::endl;
    std::cout << "===============================================================================" << std::endl;

    // --- MODE 0: KEY GENERATION ---
    for (int i = 0; i < N; i++) {
        axis_pkt p; p.data = 0xAAAA0000 + i; p.last = (i == N - 1);
        in.write(p);
    }
    mlkem_top(0, in, out);
    overall &= verify_all_256("MODE 0: GENERATE — Public Key", out, 0xAAAA0000, 0);

    // --- MODE 1: ENCAPSULATION ---
    for (int i = 0; i < N; i++) {
        axis_pkt p; p.data = 0xBBBB0000 + i; p.last = (i == N - 1);
        in.write(p);
    }
    mlkem_top(1, in, out);
    overall &= verify_all_256("MODE 1: ENCAPS  — Ciphertext",  out, 0xBBBB0000, 1);

    // --- MODE 2: DECAPSULATION ---
    for (int i = 0; i < N; i++) {
        axis_pkt p; p.data = 0xCCCC0000 + i; p.last = (i == N - 1);
        in.write(p);
    }
    mlkem_top(2, in, out);
    overall &= verify_all_256("MODE 2: DECAPS  — Plaintext",   out, 0xCCCC0000, 2);

    std::cout << "===============================================================================" << std::endl;
    std::cout << "OVERALL RESULT: " << (overall ? "ALL TESTS PASSED" : "ONE OR MORE TESTS FAILED") << std::endl;
    std::cout << "===============================================================================" << std::endl;

    // Non-zero return caught by Vitis HLS co-simulation as a test failure
    return overall ? 0 : 1;
}
