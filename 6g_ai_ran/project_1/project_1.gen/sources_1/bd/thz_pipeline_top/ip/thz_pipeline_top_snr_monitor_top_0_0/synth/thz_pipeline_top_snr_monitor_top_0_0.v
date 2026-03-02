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


// IP VLNV: xilinx.com:hls:snr_monitor_top:1.0
// IP Revision: 2114503292

(* X_CORE_INFO = "snr_monitor_top,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "thz_pipeline_top_snr_monitor_top_0_0,snr_monitor_top,{}" *)
(* CORE_GENERATION_INFO = "thz_pipeline_top_snr_monitor_top_0_0,snr_monitor_top,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=snr_monitor_top,x_ipVersion=1.0,x_ipCoreRevision=2114503292,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_SNR_ADDR_WIDTH=5,C_S_AXI_SNR_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module thz_pipeline_top_snr_monitor_top_0_0 (
  s_axi_SNR_ARADDR,
  s_axi_SNR_ARREADY,
  s_axi_SNR_ARVALID,
  s_axi_SNR_AWADDR,
  s_axi_SNR_AWREADY,
  s_axi_SNR_AWVALID,
  s_axi_SNR_BREADY,
  s_axi_SNR_BRESP,
  s_axi_SNR_BVALID,
  s_axi_SNR_RDATA,
  s_axi_SNR_RREADY,
  s_axi_SNR_RRESP,
  s_axi_SNR_RVALID,
  s_axi_SNR_WDATA,
  s_axi_SNR_WREADY,
  s_axi_SNR_WSTRB,
  s_axi_SNR_WVALID,
  ap_clk,
  ap_rst_n,
  interrupt,
  fft_in_0_TDATA,
  fft_in_0_TKEEP,
  fft_in_0_TLAST,
  fft_in_0_TREADY,
  fft_in_0_TSTRB,
  fft_in_0_TVALID,
  fft_in_1_TDATA,
  fft_in_1_TKEEP,
  fft_in_1_TLAST,
  fft_in_1_TREADY,
  fft_in_1_TSTRB,
  fft_in_1_TVALID,
  weight_stream_TDATA,
  weight_stream_TKEEP,
  weight_stream_TLAST,
  weight_stream_TREADY,
  weight_stream_TSTRB,
  weight_stream_TVALID,
  symbol_num
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR ARADDR" *)
input wire [4 : 0] s_axi_SNR_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR ARREADY" *)
output wire s_axi_SNR_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR ARVALID" *)
input wire s_axi_SNR_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR AWADDR" *)
input wire [4 : 0] s_axi_SNR_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR AWREADY" *)
output wire s_axi_SNR_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR AWVALID" *)
input wire s_axi_SNR_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR BREADY" *)
input wire s_axi_SNR_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR BRESP" *)
output wire [1 : 0] s_axi_SNR_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR BVALID" *)
output wire s_axi_SNR_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR RDATA" *)
output wire [31 : 0] s_axi_SNR_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR RREADY" *)
input wire s_axi_SNR_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR RRESP" *)
output wire [1 : 0] s_axi_SNR_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR RVALID" *)
output wire s_axi_SNR_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR WDATA" *)
input wire [31 : 0] s_axi_SNR_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR WREADY" *)
output wire s_axi_SNR_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR WSTRB" *)
input wire [3 : 0] s_axi_SNR_WSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_SNR, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 299997009, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_TH\
READS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_SNR WVALID" *)
input wire s_axi_SNR_WVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_SNR:fft_in_0:fft_in_1:weight_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_0 TDATA" *)
input wire [31 : 0] fft_in_0_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_0 TKEEP" *)
input wire [3 : 0] fft_in_0_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_0 TLAST" *)
input wire [0 : 0] fft_in_0_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_0 TREADY" *)
output wire fft_in_0_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_0 TSTRB" *)
input wire [3 : 0] fft_in_0_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fft_in_0, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_0 TVALID" *)
input wire fft_in_0_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_1 TDATA" *)
input wire [31 : 0] fft_in_1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_1 TKEEP" *)
input wire [3 : 0] fft_in_1_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_1 TLAST" *)
input wire [0 : 0] fft_in_1_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_1 TREADY" *)
output wire fft_in_1_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_1 TSTRB" *)
input wire [3 : 0] fft_in_1_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fft_in_1, TUSER_WIDTH 0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN thz_pipeline_top_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in_1 TVALID" *)
input wire fft_in_1_TVALID;
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
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME symbol_num, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 symbol_num DATA" *)
input wire [3 : 0] symbol_num;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  snr_monitor_top #(
    .C_S_AXI_SNR_ADDR_WIDTH(5),
    .C_S_AXI_SNR_DATA_WIDTH(32)
  ) inst (
    .s_axi_SNR_ARADDR(s_axi_SNR_ARADDR),
    .s_axi_SNR_ARREADY(s_axi_SNR_ARREADY),
    .s_axi_SNR_ARVALID(s_axi_SNR_ARVALID),
    .s_axi_SNR_AWADDR(s_axi_SNR_AWADDR),
    .s_axi_SNR_AWREADY(s_axi_SNR_AWREADY),
    .s_axi_SNR_AWVALID(s_axi_SNR_AWVALID),
    .s_axi_SNR_BREADY(s_axi_SNR_BREADY),
    .s_axi_SNR_BRESP(s_axi_SNR_BRESP),
    .s_axi_SNR_BVALID(s_axi_SNR_BVALID),
    .s_axi_SNR_RDATA(s_axi_SNR_RDATA),
    .s_axi_SNR_RREADY(s_axi_SNR_RREADY),
    .s_axi_SNR_RRESP(s_axi_SNR_RRESP),
    .s_axi_SNR_RVALID(s_axi_SNR_RVALID),
    .s_axi_SNR_WDATA(s_axi_SNR_WDATA),
    .s_axi_SNR_WREADY(s_axi_SNR_WREADY),
    .s_axi_SNR_WSTRB(s_axi_SNR_WSTRB),
    .s_axi_SNR_WVALID(s_axi_SNR_WVALID),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .fft_in_0_TDATA(fft_in_0_TDATA),
    .fft_in_0_TKEEP(fft_in_0_TKEEP),
    .fft_in_0_TLAST(fft_in_0_TLAST),
    .fft_in_0_TREADY(fft_in_0_TREADY),
    .fft_in_0_TSTRB(fft_in_0_TSTRB),
    .fft_in_0_TVALID(fft_in_0_TVALID),
    .fft_in_1_TDATA(fft_in_1_TDATA),
    .fft_in_1_TKEEP(fft_in_1_TKEEP),
    .fft_in_1_TLAST(fft_in_1_TLAST),
    .fft_in_1_TREADY(fft_in_1_TREADY),
    .fft_in_1_TSTRB(fft_in_1_TSTRB),
    .fft_in_1_TVALID(fft_in_1_TVALID),
    .weight_stream_TDATA(weight_stream_TDATA),
    .weight_stream_TKEEP(weight_stream_TKEEP),
    .weight_stream_TLAST(weight_stream_TLAST),
    .weight_stream_TREADY(weight_stream_TREADY),
    .weight_stream_TSTRB(weight_stream_TSTRB),
    .weight_stream_TVALID(weight_stream_TVALID),
    .symbol_num(symbol_num)
  );
endmodule
