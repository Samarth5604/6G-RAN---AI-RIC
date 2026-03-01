// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:beamformer_top:1.0
// IP Revision: 2114500775

(* X_CORE_INFO = "beamformer_top,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "thz_pipeline_top_beamformer_top_0_3,beamformer_top,{}" *)
(* CORE_GENERATION_INFO = "thz_pipeline_top_beamformer_top_0_3,beamformer_top,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=beamformer_top,x_ipVersion=1.0,x_ipCoreRevision=2114500775,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module thz_pipeline_top_beamformer_top_0_3 (
  ap_clk,
  ap_rst_n,
  ap_done,
  ap_idle,
  ap_ready,
  ap_start,
  in_stream_0_TDATA,
  in_stream_0_TKEEP,
  in_stream_0_TLAST,
  in_stream_0_TREADY,
  in_stream_0_TSTRB,
  in_stream_0_TVALID,
  in_stream_1_TDATA,
  in_stream_1_TKEEP,
  in_stream_1_TLAST,
  in_stream_1_TREADY,
  in_stream_1_TSTRB,
  in_stream_1_TVALID,
  out_stream_0_TDATA,
  out_stream_0_TKEEP,
  out_stream_0_TLAST,
  out_stream_0_TREADY,
  out_stream_0_TSTRB,
  out_stream_0_TVALID,
  out_stream_1_TDATA,
  out_stream_1_TKEEP,
  out_stream_1_TLAST,
  out_stream_1_TREADY,
  out_stream_1_TSTRB,
  out_stream_1_TVALID,
  weight_stream_TDATA,
  weight_stream_TKEEP,
  weight_stream_TLAST,
  weight_stream_TREADY,
  weight_stream_TSTRB,
  weight_stream_TVALID
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream_0:in_stream_1:out_stream_0:out_stream_1:weight_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_0 TDATA" *)
input wire [31 : 0] in_stream_0_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_0 TKEEP" *)
input wire [3 : 0] in_stream_0_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_0 TLAST" *)
input wire [0 : 0] in_stream_0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_0 TREADY" *)
output wire in_stream_0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_0 TSTRB" *)
input wire [3 : 0] in_stream_0_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream_0, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_0 TVALID" *)
input wire in_stream_0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_1 TDATA" *)
input wire [31 : 0] in_stream_1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_1 TKEEP" *)
input wire [3 : 0] in_stream_1_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_1 TLAST" *)
input wire [0 : 0] in_stream_1_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_1 TREADY" *)
output wire in_stream_1_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_1 TSTRB" *)
input wire [3 : 0] in_stream_1_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream_1, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream_1 TVALID" *)
input wire in_stream_1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_0 TDATA" *)
output wire [31 : 0] out_stream_0_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_0 TKEEP" *)
output wire [3 : 0] out_stream_0_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_0 TLAST" *)
output wire [0 : 0] out_stream_0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_0 TREADY" *)
input wire out_stream_0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_0 TSTRB" *)
output wire [3 : 0] out_stream_0_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream_0, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_0 TVALID" *)
output wire out_stream_0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_1 TDATA" *)
output wire [31 : 0] out_stream_1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_1 TKEEP" *)
output wire [3 : 0] out_stream_1_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_1 TLAST" *)
output wire [0 : 0] out_stream_1_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_1 TREADY" *)
input wire out_stream_1_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_1 TSTRB" *)
output wire [3 : 0] out_stream_1_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream_1, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream_1 TVALID" *)
output wire out_stream_1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TDATA" *)
input wire [31 : 0] weight_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TKEEP" *)
input wire [3 : 0] weight_stream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TLAST" *)
input wire [0 : 0] weight_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TREADY" *)
output wire weight_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TSTRB" *)
input wire [3 : 0] weight_stream_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weight_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TVALID" *)
input wire weight_stream_TVALID;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  beamformer_top inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .ap_start(ap_start),
    .in_stream_0_TDATA(in_stream_0_TDATA),
    .in_stream_0_TKEEP(in_stream_0_TKEEP),
    .in_stream_0_TLAST(in_stream_0_TLAST),
    .in_stream_0_TREADY(in_stream_0_TREADY),
    .in_stream_0_TSTRB(in_stream_0_TSTRB),
    .in_stream_0_TVALID(in_stream_0_TVALID),
    .in_stream_1_TDATA(in_stream_1_TDATA),
    .in_stream_1_TKEEP(in_stream_1_TKEEP),
    .in_stream_1_TLAST(in_stream_1_TLAST),
    .in_stream_1_TREADY(in_stream_1_TREADY),
    .in_stream_1_TSTRB(in_stream_1_TSTRB),
    .in_stream_1_TVALID(in_stream_1_TVALID),
    .out_stream_0_TDATA(out_stream_0_TDATA),
    .out_stream_0_TKEEP(out_stream_0_TKEEP),
    .out_stream_0_TLAST(out_stream_0_TLAST),
    .out_stream_0_TREADY(out_stream_0_TREADY),
    .out_stream_0_TSTRB(out_stream_0_TSTRB),
    .out_stream_0_TVALID(out_stream_0_TVALID),
    .out_stream_1_TDATA(out_stream_1_TDATA),
    .out_stream_1_TKEEP(out_stream_1_TKEEP),
    .out_stream_1_TLAST(out_stream_1_TLAST),
    .out_stream_1_TREADY(out_stream_1_TREADY),
    .out_stream_1_TSTRB(out_stream_1_TSTRB),
    .out_stream_1_TVALID(out_stream_1_TVALID),
    .weight_stream_TDATA(weight_stream_TDATA),
    .weight_stream_TKEEP(weight_stream_TKEEP),
    .weight_stream_TLAST(weight_stream_TLAST),
    .weight_stream_TREADY(weight_stream_TREADY),
    .weight_stream_TSTRB(weight_stream_TSTRB),
    .weight_stream_TVALID(weight_stream_TVALID)
  );
endmodule
