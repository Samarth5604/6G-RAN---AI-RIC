/*
 * chan_est.cpp — LS Channel Estimator for 6G RAN DU
 *
 * v4 — resolves remaining subcarrier_loop II=1025 violation
 *
 * Root cause of persistent violation:
 *   The non-pilot branch was: new_h = last_h (copy)
 *   Then at end of iteration: last_h = new_h (write back)
 *   This creates a RAW chain: last_h[k-1] → new_h[k] → last_h[k]
 *   across every iteration regardless of is_pilot(). HLS cannot pipeline
 *   this — it must wait for the previous iteration's write to last_h to
 *   complete before reading it for the next iteration's copy.
 *
 * Fix: split phase 1 into two completely independent passes:
 *
 *   Pass A (pilot_scan, NUM_PILOTS=172 iterations):
 *     Reads only pilot positions from a pre-buffered FFT capture.
 *     Computes H[pilot] = Y[pilot] * conj(X[pilot]).
 *     Stores in pilot_h_re[m][a] / pilot_h_im[m][a].
 *     No loop-carried dependency — each pilot is independent.
 *
 *   Pass B (zoh_fill, FFT_SIZE=1024 iterations):
 *     Reads pilot estimates by index, no dependency between iterations.
 *     Fills w_re[b][a][k] with the nearest preceding pilot estimate.
 *     ZOH index advances only at pilot positions — implemented as a
 *     static mapping precomputed at compile time (no runtime state).
 *
 * The FFT stream is buffered into a local array first (fft_buf) since
 * it needs to be read twice — once for pilot extraction, once implicitly
 * via the precomputed pilot mapping. This costs 2×NUM_ANT×FFT_SIZE×32-bit
 * = 16KB of local storage, inferred as BRAM by HLS.
 */

#include "chan_est.h"
#include "dmrs_pilots.h"

static inline void ls_div(
    ap_int<16> y_re, ap_int<16> y_im,
    chan_t      x_re, chan_t     x_im,
    chan_t     &h_re, chan_t    &h_im)
{
#pragma HLS INLINE
    chan_t y_re_f, y_im_f;
    y_re_f.range(15, 0) = y_re;
    y_im_f.range(15, 0) = y_im;
    h_re = y_re_f * x_re + y_im_f * x_im;
    h_im = y_im_f * x_re - y_re_f * x_im;
}

// Precomputed at compile time: for each subcarrier k, which pilot index
// (0..NUM_PILOTS-1) provides the ZOH estimate?
// pilot_for_k[k] = floor((k - DMRS_OFFSET) / DMRS_SPACING) clamped to 0..NUM_PILOTS-1
// k=0 maps to pilot 0 (nearest forward pilot, since no preceding pilot exists)
static const int PILOT_FOR_K[FFT_SIZE] = {
#define PMAP(k) ( (k) < DMRS_OFFSET ? 0 : \
                  ( ((k) - DMRS_OFFSET) / DMRS_SPACING < NUM_PILOTS ? \
                    ((k) - DMRS_OFFSET) / DMRS_SPACING : NUM_PILOTS-1 ) )
    // Generate 1024 entries
    PMAP(0),PMAP(1),PMAP(2),PMAP(3),PMAP(4),PMAP(5),PMAP(6),PMAP(7),
    PMAP(8),PMAP(9),PMAP(10),PMAP(11),PMAP(12),PMAP(13),PMAP(14),PMAP(15),
    PMAP(16),PMAP(17),PMAP(18),PMAP(19),PMAP(20),PMAP(21),PMAP(22),PMAP(23),
    PMAP(24),PMAP(25),PMAP(26),PMAP(27),PMAP(28),PMAP(29),PMAP(30),PMAP(31),
    PMAP(32),PMAP(33),PMAP(34),PMAP(35),PMAP(36),PMAP(37),PMAP(38),PMAP(39),
    PMAP(40),PMAP(41),PMAP(42),PMAP(43),PMAP(44),PMAP(45),PMAP(46),PMAP(47),
    PMAP(48),PMAP(49),PMAP(50),PMAP(51),PMAP(52),PMAP(53),PMAP(54),PMAP(55),
    PMAP(56),PMAP(57),PMAP(58),PMAP(59),PMAP(60),PMAP(61),PMAP(62),PMAP(63),
    PMAP(64),PMAP(65),PMAP(66),PMAP(67),PMAP(68),PMAP(69),PMAP(70),PMAP(71),
    PMAP(72),PMAP(73),PMAP(74),PMAP(75),PMAP(76),PMAP(77),PMAP(78),PMAP(79),
    PMAP(80),PMAP(81),PMAP(82),PMAP(83),PMAP(84),PMAP(85),PMAP(86),PMAP(87),
    PMAP(88),PMAP(89),PMAP(90),PMAP(91),PMAP(92),PMAP(93),PMAP(94),PMAP(95),
    PMAP(96),PMAP(97),PMAP(98),PMAP(99),PMAP(100),PMAP(101),PMAP(102),PMAP(103),
    PMAP(104),PMAP(105),PMAP(106),PMAP(107),PMAP(108),PMAP(109),PMAP(110),PMAP(111),
    PMAP(112),PMAP(113),PMAP(114),PMAP(115),PMAP(116),PMAP(117),PMAP(118),PMAP(119),
    PMAP(120),PMAP(121),PMAP(122),PMAP(123),PMAP(124),PMAP(125),PMAP(126),PMAP(127),
    PMAP(128),PMAP(129),PMAP(130),PMAP(131),PMAP(132),PMAP(133),PMAP(134),PMAP(135),
    PMAP(136),PMAP(137),PMAP(138),PMAP(139),PMAP(140),PMAP(141),PMAP(142),PMAP(143),
    PMAP(144),PMAP(145),PMAP(146),PMAP(147),PMAP(148),PMAP(149),PMAP(150),PMAP(151),
    PMAP(152),PMAP(153),PMAP(154),PMAP(155),PMAP(156),PMAP(157),PMAP(158),PMAP(159),
    PMAP(160),PMAP(161),PMAP(162),PMAP(163),PMAP(164),PMAP(165),PMAP(166),PMAP(167),
    PMAP(168),PMAP(169),PMAP(170),PMAP(171),PMAP(172),PMAP(173),PMAP(174),PMAP(175),
    PMAP(176),PMAP(177),PMAP(178),PMAP(179),PMAP(180),PMAP(181),PMAP(182),PMAP(183),
    PMAP(184),PMAP(185),PMAP(186),PMAP(187),PMAP(188),PMAP(189),PMAP(190),PMAP(191),
    PMAP(192),PMAP(193),PMAP(194),PMAP(195),PMAP(196),PMAP(197),PMAP(198),PMAP(199),
    PMAP(200),PMAP(201),PMAP(202),PMAP(203),PMAP(204),PMAP(205),PMAP(206),PMAP(207),
    PMAP(208),PMAP(209),PMAP(210),PMAP(211),PMAP(212),PMAP(213),PMAP(214),PMAP(215),
    PMAP(216),PMAP(217),PMAP(218),PMAP(219),PMAP(220),PMAP(221),PMAP(222),PMAP(223),
    PMAP(224),PMAP(225),PMAP(226),PMAP(227),PMAP(228),PMAP(229),PMAP(230),PMAP(231),
    PMAP(232),PMAP(233),PMAP(234),PMAP(235),PMAP(236),PMAP(237),PMAP(238),PMAP(239),
    PMAP(240),PMAP(241),PMAP(242),PMAP(243),PMAP(244),PMAP(245),PMAP(246),PMAP(247),
    PMAP(248),PMAP(249),PMAP(250),PMAP(251),PMAP(252),PMAP(253),PMAP(254),PMAP(255),
    PMAP(256),PMAP(257),PMAP(258),PMAP(259),PMAP(260),PMAP(261),PMAP(262),PMAP(263),
    PMAP(264),PMAP(265),PMAP(266),PMAP(267),PMAP(268),PMAP(269),PMAP(270),PMAP(271),
    PMAP(272),PMAP(273),PMAP(274),PMAP(275),PMAP(276),PMAP(277),PMAP(278),PMAP(279),
    PMAP(280),PMAP(281),PMAP(282),PMAP(283),PMAP(284),PMAP(285),PMAP(286),PMAP(287),
    PMAP(288),PMAP(289),PMAP(290),PMAP(291),PMAP(292),PMAP(293),PMAP(294),PMAP(295),
    PMAP(296),PMAP(297),PMAP(298),PMAP(299),PMAP(300),PMAP(301),PMAP(302),PMAP(303),
    PMAP(304),PMAP(305),PMAP(306),PMAP(307),PMAP(308),PMAP(309),PMAP(310),PMAP(311),
    PMAP(312),PMAP(313),PMAP(314),PMAP(315),PMAP(316),PMAP(317),PMAP(318),PMAP(319),
    PMAP(320),PMAP(321),PMAP(322),PMAP(323),PMAP(324),PMAP(325),PMAP(326),PMAP(327),
    PMAP(328),PMAP(329),PMAP(330),PMAP(331),PMAP(332),PMAP(333),PMAP(334),PMAP(335),
    PMAP(336),PMAP(337),PMAP(338),PMAP(339),PMAP(340),PMAP(341),PMAP(342),PMAP(343),
    PMAP(344),PMAP(345),PMAP(346),PMAP(347),PMAP(348),PMAP(349),PMAP(350),PMAP(351),
    PMAP(352),PMAP(353),PMAP(354),PMAP(355),PMAP(356),PMAP(357),PMAP(358),PMAP(359),
    PMAP(360),PMAP(361),PMAP(362),PMAP(363),PMAP(364),PMAP(365),PMAP(366),PMAP(367),
    PMAP(368),PMAP(369),PMAP(370),PMAP(371),PMAP(372),PMAP(373),PMAP(374),PMAP(375),
    PMAP(376),PMAP(377),PMAP(378),PMAP(379),PMAP(380),PMAP(381),PMAP(382),PMAP(383),
    PMAP(384),PMAP(385),PMAP(386),PMAP(387),PMAP(388),PMAP(389),PMAP(390),PMAP(391),
    PMAP(392),PMAP(393),PMAP(394),PMAP(395),PMAP(396),PMAP(397),PMAP(398),PMAP(399),
    PMAP(400),PMAP(401),PMAP(402),PMAP(403),PMAP(404),PMAP(405),PMAP(406),PMAP(407),
    PMAP(408),PMAP(409),PMAP(410),PMAP(411),PMAP(412),PMAP(413),PMAP(414),PMAP(415),
    PMAP(416),PMAP(417),PMAP(418),PMAP(419),PMAP(420),PMAP(421),PMAP(422),PMAP(423),
    PMAP(424),PMAP(425),PMAP(426),PMAP(427),PMAP(428),PMAP(429),PMAP(430),PMAP(431),
    PMAP(432),PMAP(433),PMAP(434),PMAP(435),PMAP(436),PMAP(437),PMAP(438),PMAP(439),
    PMAP(440),PMAP(441),PMAP(442),PMAP(443),PMAP(444),PMAP(445),PMAP(446),PMAP(447),
    PMAP(448),PMAP(449),PMAP(450),PMAP(451),PMAP(452),PMAP(453),PMAP(454),PMAP(455),
    PMAP(456),PMAP(457),PMAP(458),PMAP(459),PMAP(460),PMAP(461),PMAP(462),PMAP(463),
    PMAP(464),PMAP(465),PMAP(466),PMAP(467),PMAP(468),PMAP(469),PMAP(470),PMAP(471),
    PMAP(472),PMAP(473),PMAP(474),PMAP(475),PMAP(476),PMAP(477),PMAP(478),PMAP(479),
    PMAP(480),PMAP(481),PMAP(482),PMAP(483),PMAP(484),PMAP(485),PMAP(486),PMAP(487),
    PMAP(488),PMAP(489),PMAP(490),PMAP(491),PMAP(492),PMAP(493),PMAP(494),PMAP(495),
    PMAP(496),PMAP(497),PMAP(498),PMAP(499),PMAP(500),PMAP(501),PMAP(502),PMAP(503),
    PMAP(504),PMAP(505),PMAP(506),PMAP(507),PMAP(508),PMAP(509),PMAP(510),PMAP(511),
    PMAP(512),PMAP(513),PMAP(514),PMAP(515),PMAP(516),PMAP(517),PMAP(518),PMAP(519),
    PMAP(520),PMAP(521),PMAP(522),PMAP(523),PMAP(524),PMAP(525),PMAP(526),PMAP(527),
    PMAP(528),PMAP(529),PMAP(530),PMAP(531),PMAP(532),PMAP(533),PMAP(534),PMAP(535),
    PMAP(536),PMAP(537),PMAP(538),PMAP(539),PMAP(540),PMAP(541),PMAP(542),PMAP(543),
    PMAP(544),PMAP(545),PMAP(546),PMAP(547),PMAP(548),PMAP(549),PMAP(550),PMAP(551),
    PMAP(552),PMAP(553),PMAP(554),PMAP(555),PMAP(556),PMAP(557),PMAP(558),PMAP(559),
    PMAP(560),PMAP(561),PMAP(562),PMAP(563),PMAP(564),PMAP(565),PMAP(566),PMAP(567),
    PMAP(568),PMAP(569),PMAP(570),PMAP(571),PMAP(572),PMAP(573),PMAP(574),PMAP(575),
    PMAP(576),PMAP(577),PMAP(578),PMAP(579),PMAP(580),PMAP(581),PMAP(582),PMAP(583),
    PMAP(584),PMAP(585),PMAP(586),PMAP(587),PMAP(588),PMAP(589),PMAP(590),PMAP(591),
    PMAP(592),PMAP(593),PMAP(594),PMAP(595),PMAP(596),PMAP(597),PMAP(598),PMAP(599),
    PMAP(600),PMAP(601),PMAP(602),PMAP(603),PMAP(604),PMAP(605),PMAP(606),PMAP(607),
    PMAP(608),PMAP(609),PMAP(610),PMAP(611),PMAP(612),PMAP(613),PMAP(614),PMAP(615),
    PMAP(616),PMAP(617),PMAP(618),PMAP(619),PMAP(620),PMAP(621),PMAP(622),PMAP(623),
    PMAP(624),PMAP(625),PMAP(626),PMAP(627),PMAP(628),PMAP(629),PMAP(630),PMAP(631),
    PMAP(632),PMAP(633),PMAP(634),PMAP(635),PMAP(636),PMAP(637),PMAP(638),PMAP(639),
    PMAP(640),PMAP(641),PMAP(642),PMAP(643),PMAP(644),PMAP(645),PMAP(646),PMAP(647),
    PMAP(648),PMAP(649),PMAP(650),PMAP(651),PMAP(652),PMAP(653),PMAP(654),PMAP(655),
    PMAP(656),PMAP(657),PMAP(658),PMAP(659),PMAP(660),PMAP(661),PMAP(662),PMAP(663),
    PMAP(664),PMAP(665),PMAP(666),PMAP(667),PMAP(668),PMAP(669),PMAP(670),PMAP(671),
    PMAP(672),PMAP(673),PMAP(674),PMAP(675),PMAP(676),PMAP(677),PMAP(678),PMAP(679),
    PMAP(680),PMAP(681),PMAP(682),PMAP(683),PMAP(684),PMAP(685),PMAP(686),PMAP(687),
    PMAP(688),PMAP(689),PMAP(690),PMAP(691),PMAP(692),PMAP(693),PMAP(694),PMAP(695),
    PMAP(696),PMAP(697),PMAP(698),PMAP(699),PMAP(700),PMAP(701),PMAP(702),PMAP(703),
    PMAP(704),PMAP(705),PMAP(706),PMAP(707),PMAP(708),PMAP(709),PMAP(710),PMAP(711),
    PMAP(712),PMAP(713),PMAP(714),PMAP(715),PMAP(716),PMAP(717),PMAP(718),PMAP(719),
    PMAP(720),PMAP(721),PMAP(722),PMAP(723),PMAP(724),PMAP(725),PMAP(726),PMAP(727),
    PMAP(728),PMAP(729),PMAP(730),PMAP(731),PMAP(732),PMAP(733),PMAP(734),PMAP(735),
    PMAP(736),PMAP(737),PMAP(738),PMAP(739),PMAP(740),PMAP(741),PMAP(742),PMAP(743),
    PMAP(744),PMAP(745),PMAP(746),PMAP(747),PMAP(748),PMAP(749),PMAP(750),PMAP(751),
    PMAP(752),PMAP(753),PMAP(754),PMAP(755),PMAP(756),PMAP(757),PMAP(758),PMAP(759),
    PMAP(760),PMAP(761),PMAP(762),PMAP(763),PMAP(764),PMAP(765),PMAP(766),PMAP(767),
    PMAP(768),PMAP(769),PMAP(770),PMAP(771),PMAP(772),PMAP(773),PMAP(774),PMAP(775),
    PMAP(776),PMAP(777),PMAP(778),PMAP(779),PMAP(780),PMAP(781),PMAP(782),PMAP(783),
    PMAP(784),PMAP(785),PMAP(786),PMAP(787),PMAP(788),PMAP(789),PMAP(790),PMAP(791),
    PMAP(792),PMAP(793),PMAP(794),PMAP(795),PMAP(796),PMAP(797),PMAP(798),PMAP(799),
    PMAP(800),PMAP(801),PMAP(802),PMAP(803),PMAP(804),PMAP(805),PMAP(806),PMAP(807),
    PMAP(808),PMAP(809),PMAP(810),PMAP(811),PMAP(812),PMAP(813),PMAP(814),PMAP(815),
    PMAP(816),PMAP(817),PMAP(818),PMAP(819),PMAP(820),PMAP(821),PMAP(822),PMAP(823),
    PMAP(824),PMAP(825),PMAP(826),PMAP(827),PMAP(828),PMAP(829),PMAP(830),PMAP(831),
    PMAP(832),PMAP(833),PMAP(834),PMAP(835),PMAP(836),PMAP(837),PMAP(838),PMAP(839),
    PMAP(840),PMAP(841),PMAP(842),PMAP(843),PMAP(844),PMAP(845),PMAP(846),PMAP(847),
    PMAP(848),PMAP(849),PMAP(850),PMAP(851),PMAP(852),PMAP(853),PMAP(854),PMAP(855),
    PMAP(856),PMAP(857),PMAP(858),PMAP(859),PMAP(860),PMAP(861),PMAP(862),PMAP(863),
    PMAP(864),PMAP(865),PMAP(866),PMAP(867),PMAP(868),PMAP(869),PMAP(870),PMAP(871),
    PMAP(872),PMAP(873),PMAP(874),PMAP(875),PMAP(876),PMAP(877),PMAP(878),PMAP(879),
    PMAP(880),PMAP(881),PMAP(882),PMAP(883),PMAP(884),PMAP(885),PMAP(886),PMAP(887),
    PMAP(888),PMAP(889),PMAP(890),PMAP(891),PMAP(892),PMAP(893),PMAP(894),PMAP(895),
    PMAP(896),PMAP(897),PMAP(898),PMAP(899),PMAP(900),PMAP(901),PMAP(902),PMAP(903),
    PMAP(904),PMAP(905),PMAP(906),PMAP(907),PMAP(908),PMAP(909),PMAP(910),PMAP(911),
    PMAP(912),PMAP(913),PMAP(914),PMAP(915),PMAP(916),PMAP(917),PMAP(918),PMAP(919),
    PMAP(920),PMAP(921),PMAP(922),PMAP(923),PMAP(924),PMAP(925),PMAP(926),PMAP(927),
    PMAP(928),PMAP(929),PMAP(930),PMAP(931),PMAP(932),PMAP(933),PMAP(934),PMAP(935),
    PMAP(936),PMAP(937),PMAP(938),PMAP(939),PMAP(940),PMAP(941),PMAP(942),PMAP(943),
    PMAP(944),PMAP(945),PMAP(946),PMAP(947),PMAP(948),PMAP(949),PMAP(950),PMAP(951),
    PMAP(952),PMAP(953),PMAP(954),PMAP(955),PMAP(956),PMAP(957),PMAP(958),PMAP(959),
    PMAP(960),PMAP(961),PMAP(962),PMAP(963),PMAP(964),PMAP(965),PMAP(966),PMAP(967),
    PMAP(968),PMAP(969),PMAP(970),PMAP(971),PMAP(972),PMAP(973),PMAP(974),PMAP(975),
    PMAP(976),PMAP(977),PMAP(978),PMAP(979),PMAP(980),PMAP(981),PMAP(982),PMAP(983),
    PMAP(984),PMAP(985),PMAP(986),PMAP(987),PMAP(988),PMAP(989),PMAP(990),PMAP(991),
    PMAP(992),PMAP(993),PMAP(994),PMAP(995),PMAP(996),PMAP(997),PMAP(998),PMAP(999),
    PMAP(1000),PMAP(1001),PMAP(1002),PMAP(1003),PMAP(1004),PMAP(1005),PMAP(1006),PMAP(1007),
    PMAP(1008),PMAP(1009),PMAP(1010),PMAP(1011),PMAP(1012),PMAP(1013),PMAP(1014),PMAP(1015),
    PMAP(1016),PMAP(1017),PMAP(1018),PMAP(1019),PMAP(1020),PMAP(1021),PMAP(1022),PMAP(1023)
#undef PMAP
};

void chan_est_top(
    hls::stream<axis_t> fft_in[NUM_ANT],
    ap_uint<4>          symbol_num,
    hls::stream<axis_t> &weight_stream)
{
#pragma HLS INTERFACE axis       port=fft_in
#pragma HLS INTERFACE axis       port=weight_stream
#pragma HLS INTERFACE ap_none    port=symbol_num
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS DISAGGREGATE         variable=fft_in

    // ── FFT sample buffer — holds one full symbol per antenna ─────────────────
    // Required because pilot_scan needs random access to pilot positions,
    // and stream can only be read once sequentially.
    // 2 ant × 1024 × 32-bit = 8KB — inferred as 4 BRAM-18K by HLS.
    ap_int<16> fft_re[NUM_ANT][FFT_SIZE];
    ap_int<16> fft_im[NUM_ANT][FFT_SIZE];
#pragma HLS ARRAY_PARTITION variable=fft_re complete dim=1
#pragma HLS ARRAY_PARTITION variable=fft_im complete dim=1

    // ── Per-pilot channel estimates ───────────────────────────────────────────
    chan_t pilot_h_re[NUM_ANT][NUM_PILOTS];
    chan_t pilot_h_im[NUM_ANT][NUM_PILOTS];
#pragma HLS ARRAY_PARTITION variable=pilot_h_re complete dim=1
#pragma HLS ARRAY_PARTITION variable=pilot_h_im complete dim=1

    // ── Weight buffer ─────────────────────────────────────────────────────────
    chan_t w_re[NUM_BEAM][NUM_ANT][FFT_SIZE];
    chan_t w_im[NUM_BEAM][NUM_ANT][FFT_SIZE];
#pragma HLS ARRAY_PARTITION variable=w_re complete dim=1
#pragma HLS ARRAY_PARTITION variable=w_re complete dim=2
#pragma HLS ARRAY_PARTITION variable=w_im complete dim=1
#pragma HLS ARRAY_PARTITION variable=w_im complete dim=2

    // ═════════════════════════════════════════════════════════════════════════
    // Pass A: buffer FFT stream — always, every symbol
    // ═════════════════════════════════════════════════════════════════════════
    buf_loop:
    for (int k = 0; k < FFT_SIZE; k++) {
#pragma HLS PIPELINE II=1
        for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
            axis_t s    = fft_in[a].read();
            fft_re[a][k] = (ap_int<16>)s.data.range(15,  0);
            fft_im[a][k] = (ap_int<16>)s.data.range(31, 16);
        }
    }

    // ═════════════════════════════════════════════════════════════════════════
    // Pass B: compute LS estimates at pilot positions only
    // No loop-carried dependency — each pilot reads from fft buffer (random
    // access, no state) and writes to an independent pilot_h slot.
    // ═════════════════════════════════════════════════════════════════════════
    if (symbol_num == 2) {

        pilot_scan:
        for (int m = 0; m < NUM_PILOTS; m++) {
#pragma HLS PIPELINE II=1
            int k = DMRS_OFFSET + m * DMRS_SPACING;   // compile-time computable
            chan_t xr = DMRS_RE[m];
            chan_t xi = DMRS_IM[m];
            for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
                chan_t hr, hi;
                ls_div(fft_re[a][k], fft_im[a][k], xr, xi, hr, hi);
                pilot_h_re[a][m] = hr;
                pilot_h_im[a][m] = hi;
            }
        }

        // ═════════════════════════════════════════════════════════════════════
        // Pass C: ZOH fill using precomputed PILOT_FOR_K lookup — no state,
        // no loop-carried dependency. Each iteration independently reads
        // pilot_h[a][PILOT_FOR_K[k]] which is a pure function of k.
        // ═════════════════════════════════════════════════════════════════════
        zoh_fill:
        for (int k = 0; k < FFT_SIZE; k++) {
#pragma HLS PIPELINE II=1
            int m = PILOT_FOR_K[k];
            for (int b = 0; b < NUM_BEAM; b++) {
#pragma HLS UNROLL
                for (int a = 0; a < NUM_ANT; a++) {
#pragma HLS UNROLL
                    w_re[b][a][k] = pilot_h_re[a][m];
                    w_im[b][a][k] = pilot_h_im[a][m];
                }
            }
        }

        // ═════════════════════════════════════════════════════════════════════
        // Pass D: stream weight buffer to beamformer
        // ═════════════════════════════════════════════════════════════════════
        weight_out:
        for (int idx = 0; idx < WEIGHT_STREAM_LEN; idx++) {
#pragma HLS PIPELINE II=1
            int b = idx / (NUM_ANT * FFT_SIZE);
            int a = (idx / FFT_SIZE) % NUM_ANT;
            int k = idx % FFT_SIZE;
            axis_t w;
            w.data.range(15,  0) = w_re[b][a][k].range(15, 0);
            w.data.range(31, 16) = w_im[b][a][k].range(15, 0);
            w.keep = 0xF;
            w.last = (idx == WEIGHT_STREAM_LEN - 1) ? ap_uint<1>(1)
                                                     : ap_uint<1>(0);
            weight_stream.write(w);
        }
    }
}
