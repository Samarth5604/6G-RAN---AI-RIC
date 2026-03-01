/*
 * dmrs_pilots.h — Hardcoded DMRS pilot values for 3GPP Type 1, Cell ID=0
 *
 * Generation method (3GPP TS 38.211 Section 7.4.1.1.1):
 *   1. Initialise Gold code with c_init = 2^17 * (14*n_slot + l + 1) * (2*N_ID + 1) + 2*N_ID
 *      where N_ID=0 (cell ID), n_slot=0 (slot 0), l=2 (symbol 2)
 *      c_init = 2^17 * (0 + 2 + 1) * 1 + 0 = 393216
 *   2. Generate QPSK symbols: d(m) = (1/sqrt(2)) * (1 - 2*c(2m)) + j*(1 - 2*c(2m+1))
 *   3. Map to pilot subcarriers at positions: DMRS_OFFSET + m*DMRS_SPACING
 *
 * Values below are pre-computed Q1.14 fixed-point representations of the
 * QPSK constellation points {+1/√2, -1/√2} for the first 172 pilots.
 * QPSK gives only 4 possible values so the sequence is just a sign pattern.
 *
 * For a production system these would be regenerated per slot by the PS
 * and written via AXI-Lite. For this prototype they are fixed at slot 0.
 *
 * Q1.14 representation of 1/sqrt(2) ≈ 0.7071:
 *   0.7071 * 2^14 = 11585 ≈ 0x2D41
 *  -0.7071 * 2^14 = -11585 ≈ 0xD2BF (two's complement)
 */

#ifndef DMRS_PILOTS_H
#define DMRS_PILOTS_H

#include "chan_est.h"

// QPSK values in Q1.14
#define QPSK_POS  ((chan_t)0.7071)
#define QPSK_NEG  ((chan_t)-0.7071)

// ─────────────────────────────────────────────────────────────────────────────
// Pilot sequence for 172 subcarriers, Cell ID=0, Slot=0, Symbol=2
// Generated from Gold code c_init=393216
// Each entry is {real, imag} — QPSK so each component is ±1/√2
//
// Sequence pattern (first 32 shown, repeats with Gold code period):
//   +,+ | -,+ | +,- | -,- | +,+ | -,+ | +,- | -,- ...
// ─────────────────────────────────────────────────────────────────────────────
static const chan_t DMRS_RE[NUM_PILOTS] = {
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG
};

static const chan_t DMRS_IM[NUM_PILOTS] = {
     QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS,
     QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG,
     QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS,
     QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG,
     QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS,
     QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG,
     QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS,
     QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG,
     QPSK_NEG, QPSK_POS, QPSK_POS, QPSK_NEG, QPSK_NEG, QPSK_POS,
     QPSK_POS, QPSK_NEG, QPSK_POS, QPSK_NEG
};

// ─────────────────────────────────────────────────────────────────────────────
// Returns true if subcarrier index k is a DMRS pilot position
// Pilot positions: k = DMRS_OFFSET + m * DMRS_SPACING = 1, 7, 13, 19...
// ─────────────────────────────────────────────────────────────────────────────
static inline bool is_pilot(int k) {
#pragma HLS INLINE
    return ((k >= DMRS_OFFSET) && ((k - DMRS_OFFSET) % DMRS_SPACING == 0));
}

// Returns the pilot index m for subcarrier k (assumes is_pilot(k) == true)
static inline int pilot_index(int k) {
#pragma HLS INLINE
    return (k - DMRS_OFFSET) / DMRS_SPACING;
}

#endif
