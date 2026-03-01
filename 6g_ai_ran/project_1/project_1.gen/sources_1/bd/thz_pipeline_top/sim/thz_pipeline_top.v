//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Sun Mar  1 09:29:02 2026
//Host        : localhost.localdomain running 64-bit unknown
//Command     : generate_target thz_pipeline_top.bd
//Design      : thz_pipeline_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1YMCB6L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_73OJD6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1TFFO4Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_3K2YQT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_1MUB2GZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [39:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1TZ6HUZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  thz_pipeline_top_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "thz_pipeline_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=thz_pipeline_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=34,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=7,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=8,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_bram_cntlr_cnt=16,da_clkrst_cnt=1,synth_mode=Singular}" *) (* HW_HANDOFF = "thz_pipeline_top.hwdef" *) 
module thz_pipeline_top
   ();

  wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_0_M_AXIS_MM2S_TKEEP;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [39:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [39:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_1_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_1_M_AXIS_MM2S_TKEEP;
  wire axi_dma_1_M_AXIS_MM2S_TLAST;
  wire axi_dma_1_M_AXIS_MM2S_TREADY;
  wire axi_dma_1_M_AXIS_MM2S_TVALID;
  wire [39:0]axi_dma_1_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_1_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_1_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_1_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARPROT;
  wire axi_dma_1_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_1_M_AXI_MM2S_ARSIZE;
  wire axi_dma_1_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_1_M_AXI_MM2S_RDATA;
  wire axi_dma_1_M_AXI_MM2S_RLAST;
  wire axi_dma_1_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_1_M_AXI_MM2S_RRESP;
  wire axi_dma_1_M_AXI_MM2S_RVALID;
  wire [39:0]axi_dma_1_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_1_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_1_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_1_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWPROT;
  wire axi_dma_1_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_1_M_AXI_S2MM_AWSIZE;
  wire axi_dma_1_M_AXI_S2MM_AWVALID;
  wire axi_dma_1_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_1_M_AXI_S2MM_BRESP;
  wire axi_dma_1_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_1_M_AXI_S2MM_WDATA;
  wire axi_dma_1_M_AXI_S2MM_WLAST;
  wire axi_dma_1_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_1_M_AXI_S2MM_WSTRB;
  wire axi_dma_1_M_AXI_S2MM_WVALID;
  wire [3:0]axi_gpio_0_gpio_io_o;
  wire [48:0]axi_smc1_M00_AXI_ARADDR;
  wire [1:0]axi_smc1_M00_AXI_ARBURST;
  wire [3:0]axi_smc1_M00_AXI_ARCACHE;
  wire [7:0]axi_smc1_M00_AXI_ARLEN;
  wire [0:0]axi_smc1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc1_M00_AXI_ARPROT;
  wire [3:0]axi_smc1_M00_AXI_ARQOS;
  wire axi_smc1_M00_AXI_ARREADY;
  wire [2:0]axi_smc1_M00_AXI_ARSIZE;
  wire axi_smc1_M00_AXI_ARVALID;
  wire [48:0]axi_smc1_M00_AXI_AWADDR;
  wire [1:0]axi_smc1_M00_AXI_AWBURST;
  wire [3:0]axi_smc1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc1_M00_AXI_AWLEN;
  wire [0:0]axi_smc1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc1_M00_AXI_AWPROT;
  wire [3:0]axi_smc1_M00_AXI_AWQOS;
  wire axi_smc1_M00_AXI_AWREADY;
  wire [2:0]axi_smc1_M00_AXI_AWSIZE;
  wire axi_smc1_M00_AXI_AWVALID;
  wire axi_smc1_M00_AXI_BREADY;
  wire [1:0]axi_smc1_M00_AXI_BRESP;
  wire axi_smc1_M00_AXI_BVALID;
  wire [127:0]axi_smc1_M00_AXI_RDATA;
  wire axi_smc1_M00_AXI_RLAST;
  wire axi_smc1_M00_AXI_RREADY;
  wire [1:0]axi_smc1_M00_AXI_RRESP;
  wire axi_smc1_M00_AXI_RVALID;
  wire [127:0]axi_smc1_M00_AXI_WDATA;
  wire axi_smc1_M00_AXI_WLAST;
  wire axi_smc1_M00_AXI_WREADY;
  wire [15:0]axi_smc1_M00_AXI_WSTRB;
  wire axi_smc1_M00_AXI_WVALID;
  wire [48:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [48:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [127:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [127:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [15:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [31:0]axis_broadcaster_0_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TLAST;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TVALID;
  wire [63:32]axis_broadcaster_0_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TLAST;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TVALID;
  wire [31:0]axis_broadcaster_1_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_1_M00_AXIS_TLAST;
  wire [0:0]axis_broadcaster_1_M00_AXIS_TVALID;
  wire [63:32]axis_broadcaster_1_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_1_M01_AXIS_TLAST;
  wire [1:1]axis_broadcaster_1_M01_AXIS_TVALID;
  wire [31:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire [3:0]axis_data_fifo_0_M_AXIS_TSTRB;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [31:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire [3:0]axis_data_fifo_1_M_AXIS_TKEEP;
  wire axis_data_fifo_1_M_AXIS_TLAST;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire [3:0]axis_data_fifo_1_M_AXIS_TSTRB;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [31:0]beamformer_top_0_out_stream_0_TDATA;
  wire [0:0]beamformer_top_0_out_stream_0_TLAST;
  wire beamformer_top_0_out_stream_0_TREADY;
  wire beamformer_top_0_out_stream_0_TVALID;
  wire [31:0]beamformer_top_0_out_stream_1_TDATA;
  wire [0:0]beamformer_top_0_out_stream_1_TLAST;
  wire beamformer_top_0_out_stream_1_TREADY;
  wire beamformer_top_0_out_stream_1_TVALID;
  wire [31:0]chan_est_top_0_weight_stream_TDATA;
  wire [3:0]chan_est_top_0_weight_stream_TKEEP;
  wire [0:0]chan_est_top_0_weight_stream_TLAST;
  wire chan_est_top_0_weight_stream_TREADY;
  wire [3:0]chan_est_top_0_weight_stream_TSTRB;
  wire chan_est_top_0_weight_stream_TVALID;
  wire [31:0]cp_insertion_0_out_stream_TDATA;
  wire [3:0]cp_insertion_0_out_stream_TKEEP;
  wire [0:0]cp_insertion_0_out_stream_TLAST;
  wire cp_insertion_0_out_stream_TREADY;
  wire [3:0]cp_insertion_0_out_stream_TSTRB;
  wire cp_insertion_0_out_stream_TVALID;
  wire [31:0]cp_insertion_1_out_stream_TDATA;
  wire [3:0]cp_insertion_1_out_stream_TKEEP;
  wire [0:0]cp_insertion_1_out_stream_TLAST;
  wire cp_insertion_1_out_stream_TREADY;
  wire [3:0]cp_insertion_1_out_stream_TSTRB;
  wire cp_insertion_1_out_stream_TVALID;
  wire [31:0]cp_removal_0_out_stream_TDATA;
  wire [3:0]cp_removal_0_out_stream_TKEEP;
  wire [0:0]cp_removal_0_out_stream_TLAST;
  wire cp_removal_0_out_stream_TREADY;
  wire cp_removal_0_out_stream_TVALID;
  wire [31:0]cp_removal_1_out_stream_TDATA;
  wire [3:0]cp_removal_1_out_stream_TKEEP;
  wire [0:0]cp_removal_1_out_stream_TLAST;
  wire cp_removal_1_out_stream_TREADY;
  wire cp_removal_1_out_stream_TVALID;
  wire [31:0]mlkem_top_0_out_stream_TDATA;
  wire [0:0]mlkem_top_0_out_stream_TLAST;
  wire mlkem_top_0_out_stream_TREADY;
  wire mlkem_top_0_out_stream_TVALID;
  wire [31:0]mlkem_top_1_out_stream_TDATA;
  wire [0:0]mlkem_top_1_out_stream_TLAST;
  wire mlkem_top_1_out_stream_TREADY;
  wire mlkem_top_1_out_stream_TVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire ps8_0_axi_periph_M00_AXI_AWVALID;
  wire ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire ps8_0_axi_periph_M00_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_ARADDR;
  wire ps8_0_axi_periph_M01_AXI_ARREADY;
  wire ps8_0_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M01_AXI_AWADDR;
  wire ps8_0_axi_periph_M01_AXI_AWREADY;
  wire ps8_0_axi_periph_M01_AXI_AWVALID;
  wire ps8_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_BRESP;
  wire ps8_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_RDATA;
  wire ps8_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M01_AXI_RRESP;
  wire ps8_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M01_AXI_WDATA;
  wire ps8_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M01_AXI_WSTRB;
  wire ps8_0_axi_periph_M01_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire ps8_0_axi_periph_M02_AXI_AWVALID;
  wire ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire ps8_0_axi_periph_M02_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_ARADDR;
  wire ps8_0_axi_periph_M03_AXI_ARREADY;
  wire ps8_0_axi_periph_M03_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M03_AXI_AWADDR;
  wire ps8_0_axi_periph_M03_AXI_AWREADY;
  wire ps8_0_axi_periph_M03_AXI_AWVALID;
  wire ps8_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_BRESP;
  wire ps8_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_RDATA;
  wire ps8_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M03_AXI_RRESP;
  wire ps8_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M03_AXI_WDATA;
  wire ps8_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M03_AXI_WSTRB;
  wire ps8_0_axi_periph_M03_AXI_WVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_ARADDR;
  wire ps8_0_axi_periph_M04_AXI_ARREADY;
  wire ps8_0_axi_periph_M04_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M04_AXI_AWADDR;
  wire ps8_0_axi_periph_M04_AXI_AWREADY;
  wire ps8_0_axi_periph_M04_AXI_AWVALID;
  wire ps8_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_BRESP;
  wire ps8_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_RDATA;
  wire ps8_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M04_AXI_RRESP;
  wire ps8_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M04_AXI_WDATA;
  wire ps8_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M04_AXI_WSTRB;
  wire ps8_0_axi_periph_M04_AXI_WVALID;
  wire [0:0]rst_ps8_0_266M_peripheral_aresetn;
  wire xfft_0_M_AXIS_DATA_TLAST;
  wire xfft_0_M_AXIS_DATA_TVALID;
  wire [31:0]xfft_0_m_axis_data_tdata;
  wire [31:0]xfft_1_M_AXIS_DATA_TDATA;
  wire xfft_1_M_AXIS_DATA_TLAST;
  wire xfft_1_M_AXIS_DATA_TVALID;
  wire [31:0]xfft_2_M_AXIS_DATA_TDATA;
  wire xfft_2_M_AXIS_DATA_TLAST;
  wire xfft_2_M_AXIS_DATA_TVALID;
  wire [31:0]xfft_3_M_AXIS_DATA_TDATA;
  wire xfft_3_M_AXIS_DATA_TLAST;
  wire xfft_3_M_AXIS_DATA_TVALID;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  thz_pipeline_top_axi_dma_0_0 axi_dma_0
       (.axi_resetn(rst_ps8_0_266M_peripheral_aresetn),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(ps8_0_axi_periph_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_lite_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_lite_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_lite_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_lite_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_lite_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_lite_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_lite_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_lite_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_lite_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_lite_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(cp_removal_0_out_stream_TDATA),
        .s_axis_s2mm_tkeep(cp_removal_0_out_stream_TKEEP),
        .s_axis_s2mm_tlast(cp_removal_0_out_stream_TLAST),
        .s_axis_s2mm_tready(cp_removal_0_out_stream_TREADY),
        .s_axis_s2mm_tvalid(cp_removal_0_out_stream_TVALID));
  thz_pipeline_top_axi_dma_0_1 axi_dma_1
       (.axi_resetn(rst_ps8_0_266M_peripheral_aresetn),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_mm2s_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_1_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_1_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_1_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_1_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_1_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_lite_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_lite_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_lite_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_lite_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_lite_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_lite_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_lite_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_lite_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_lite_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_lite_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_lite_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_lite_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_lite_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .s_axis_s2mm_tdata(cp_removal_1_out_stream_TDATA),
        .s_axis_s2mm_tkeep(cp_removal_1_out_stream_TKEEP),
        .s_axis_s2mm_tlast(cp_removal_1_out_stream_TLAST),
        .s_axis_s2mm_tready(cp_removal_1_out_stream_TREADY),
        .s_axis_s2mm_tvalid(cp_removal_1_out_stream_TVALID));
  thz_pipeline_top_axi_gpio_0_3 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_266M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M04_AXI_WVALID));
  thz_pipeline_top_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_266M_peripheral_aresetn));
  thz_pipeline_top_axi_smc_1 axi_smc1
       (.M00_AXI_araddr(axi_smc1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc1_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_1_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_1_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_1_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_1_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_1_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_1_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_1_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_1_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_1_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_1_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_1_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_1_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_1_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_266M_peripheral_aresetn));
  thz_pipeline_top_axis_broadcaster_0_0 axis_broadcaster_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_266M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_0_M01_AXIS_TDATA,axis_broadcaster_0_M00_AXIS_TDATA}),
        .m_axis_tlast({axis_broadcaster_0_M01_AXIS_TLAST,axis_broadcaster_0_M00_AXIS_TLAST}),
        .m_axis_tvalid({axis_broadcaster_0_M01_AXIS_TVALID,axis_broadcaster_0_M00_AXIS_TVALID}),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .s_axis_tvalid(xfft_0_M_AXIS_DATA_TVALID));
  thz_pipeline_top_axis_broadcaster_0_1 axis_broadcaster_1
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_266M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_1_M01_AXIS_TDATA,axis_broadcaster_1_M00_AXIS_TDATA}),
        .m_axis_tlast({axis_broadcaster_1_M01_AXIS_TLAST,axis_broadcaster_1_M00_AXIS_TLAST}),
        .m_axis_tvalid({axis_broadcaster_1_M01_AXIS_TVALID,axis_broadcaster_1_M00_AXIS_TVALID}),
        .s_axis_tdata(xfft_1_M_AXIS_DATA_TDATA),
        .s_axis_tlast(xfft_1_M_AXIS_DATA_TLAST),
        .s_axis_tvalid(xfft_1_M_AXIS_DATA_TVALID));
  thz_pipeline_top_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tstrb(axis_data_fifo_0_M_AXIS_TSTRB),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_aresetn(rst_ps8_0_266M_peripheral_aresetn),
        .s_axis_tdata(cp_insertion_0_out_stream_TDATA),
        .s_axis_tkeep(cp_insertion_0_out_stream_TKEEP),
        .s_axis_tlast(cp_insertion_0_out_stream_TLAST),
        .s_axis_tready(cp_insertion_0_out_stream_TREADY),
        .s_axis_tstrb(cp_insertion_0_out_stream_TSTRB),
        .s_axis_tvalid(cp_insertion_0_out_stream_TVALID));
  thz_pipeline_top_axis_data_fifo_0_1 axis_data_fifo_1
       (.m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_1_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tstrb(axis_data_fifo_1_M_AXIS_TSTRB),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_aresetn(rst_ps8_0_266M_peripheral_aresetn),
        .s_axis_tdata(cp_insertion_1_out_stream_TDATA),
        .s_axis_tkeep(cp_insertion_1_out_stream_TKEEP),
        .s_axis_tlast(cp_insertion_1_out_stream_TLAST),
        .s_axis_tready(cp_insertion_1_out_stream_TREADY),
        .s_axis_tstrb(cp_insertion_1_out_stream_TSTRB),
        .s_axis_tvalid(cp_insertion_1_out_stream_TVALID));
  thz_pipeline_top_beamformer_top_0_3 beamformer_top_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .ap_start(xfft_0_m_axis_data_tdata[0]),
        .in_stream_0_TDATA(axis_broadcaster_0_M01_AXIS_TDATA),
        .in_stream_0_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_0_TLAST(axis_broadcaster_0_M01_AXIS_TLAST),
        .in_stream_0_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_0_TVALID(axis_broadcaster_0_M01_AXIS_TVALID),
        .in_stream_1_TDATA(axis_broadcaster_1_M01_AXIS_TDATA),
        .in_stream_1_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_1_TLAST(axis_broadcaster_1_M01_AXIS_TLAST),
        .in_stream_1_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_1_TVALID(axis_broadcaster_1_M01_AXIS_TVALID),
        .out_stream_0_TDATA(beamformer_top_0_out_stream_0_TDATA),
        .out_stream_0_TLAST(beamformer_top_0_out_stream_0_TLAST),
        .out_stream_0_TREADY(beamformer_top_0_out_stream_0_TREADY),
        .out_stream_0_TVALID(beamformer_top_0_out_stream_0_TVALID),
        .out_stream_1_TDATA(beamformer_top_0_out_stream_1_TDATA),
        .out_stream_1_TLAST(beamformer_top_0_out_stream_1_TLAST),
        .out_stream_1_TREADY(beamformer_top_0_out_stream_1_TREADY),
        .out_stream_1_TVALID(beamformer_top_0_out_stream_1_TVALID),
        .weight_stream_TDATA(chan_est_top_0_weight_stream_TDATA),
        .weight_stream_TKEEP(chan_est_top_0_weight_stream_TKEEP),
        .weight_stream_TLAST(chan_est_top_0_weight_stream_TLAST),
        .weight_stream_TREADY(chan_est_top_0_weight_stream_TREADY),
        .weight_stream_TSTRB(chan_est_top_0_weight_stream_TSTRB),
        .weight_stream_TVALID(chan_est_top_0_weight_stream_TVALID));
  thz_pipeline_top_chan_est_top_0_1 chan_est_top_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .ap_start(zynq_ultra_ps_e_0_pl_clk0),
        .fft_in_0_TDATA(axis_broadcaster_0_M00_AXIS_TDATA),
        .fft_in_0_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .fft_in_0_TLAST(axis_broadcaster_0_M00_AXIS_TLAST),
        .fft_in_0_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .fft_in_0_TVALID(axis_broadcaster_0_M00_AXIS_TVALID),
        .fft_in_1_TDATA(axis_broadcaster_1_M00_AXIS_TDATA),
        .fft_in_1_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .fft_in_1_TLAST(axis_broadcaster_1_M00_AXIS_TLAST),
        .fft_in_1_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .fft_in_1_TVALID(axis_broadcaster_1_M00_AXIS_TVALID),
        .symbol_num(axi_gpio_0_gpio_io_o),
        .weight_stream_TDATA(chan_est_top_0_weight_stream_TDATA),
        .weight_stream_TKEEP(chan_est_top_0_weight_stream_TKEEP),
        .weight_stream_TLAST(chan_est_top_0_weight_stream_TLAST),
        .weight_stream_TREADY(chan_est_top_0_weight_stream_TREADY),
        .weight_stream_TSTRB(chan_est_top_0_weight_stream_TSTRB),
        .weight_stream_TVALID(chan_est_top_0_weight_stream_TVALID));
  thz_pipeline_top_cp_insertion_0_0 cp_insertion_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .in_stream_TDATA(xfft_2_M_AXIS_DATA_TDATA),
        .in_stream_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_TLAST(xfft_2_M_AXIS_DATA_TLAST),
        .in_stream_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_TVALID(xfft_2_M_AXIS_DATA_TVALID),
        .out_stream_TDATA(cp_insertion_0_out_stream_TDATA),
        .out_stream_TKEEP(cp_insertion_0_out_stream_TKEEP),
        .out_stream_TLAST(cp_insertion_0_out_stream_TLAST),
        .out_stream_TREADY(cp_insertion_0_out_stream_TREADY),
        .out_stream_TSTRB(cp_insertion_0_out_stream_TSTRB),
        .out_stream_TVALID(cp_insertion_0_out_stream_TVALID));
  thz_pipeline_top_cp_insertion_1_0 cp_insertion_1
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .in_stream_TDATA(xfft_3_M_AXIS_DATA_TDATA),
        .in_stream_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_TLAST(xfft_3_M_AXIS_DATA_TLAST),
        .in_stream_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_TVALID(xfft_3_M_AXIS_DATA_TVALID),
        .out_stream_TDATA(cp_insertion_1_out_stream_TDATA),
        .out_stream_TKEEP(cp_insertion_1_out_stream_TKEEP),
        .out_stream_TLAST(cp_insertion_1_out_stream_TLAST),
        .out_stream_TREADY(cp_insertion_1_out_stream_TREADY),
        .out_stream_TSTRB(cp_insertion_1_out_stream_TSTRB),
        .out_stream_TVALID(cp_insertion_1_out_stream_TVALID));
  thz_pipeline_top_cp_removal_0_0 cp_removal_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .in_stream_TDATA(axis_data_fifo_0_M_AXIS_TDATA),
        .in_stream_TKEEP(axis_data_fifo_0_M_AXIS_TKEEP),
        .in_stream_TLAST(axis_data_fifo_0_M_AXIS_TLAST),
        .in_stream_TREADY(axis_data_fifo_0_M_AXIS_TREADY),
        .in_stream_TSTRB(axis_data_fifo_0_M_AXIS_TSTRB),
        .in_stream_TVALID(axis_data_fifo_0_M_AXIS_TVALID),
        .out_stream_TDATA(cp_removal_0_out_stream_TDATA),
        .out_stream_TKEEP(cp_removal_0_out_stream_TKEEP),
        .out_stream_TLAST(cp_removal_0_out_stream_TLAST),
        .out_stream_TREADY(cp_removal_0_out_stream_TREADY),
        .out_stream_TVALID(cp_removal_0_out_stream_TVALID));
  thz_pipeline_top_cp_removal_0_1 cp_removal_1
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .in_stream_TDATA(axis_data_fifo_1_M_AXIS_TDATA),
        .in_stream_TKEEP(axis_data_fifo_1_M_AXIS_TKEEP),
        .in_stream_TLAST(axis_data_fifo_1_M_AXIS_TLAST),
        .in_stream_TREADY(axis_data_fifo_1_M_AXIS_TREADY),
        .in_stream_TSTRB(axis_data_fifo_1_M_AXIS_TSTRB),
        .in_stream_TVALID(axis_data_fifo_1_M_AXIS_TVALID),
        .out_stream_TDATA(cp_removal_1_out_stream_TDATA),
        .out_stream_TKEEP(cp_removal_1_out_stream_TKEEP),
        .out_stream_TLAST(cp_removal_1_out_stream_TLAST),
        .out_stream_TREADY(cp_removal_1_out_stream_TREADY),
        .out_stream_TVALID(cp_removal_1_out_stream_TVALID));
  thz_pipeline_top_mlkem_top_0_1 mlkem_top_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .in_stream_TDATA(axi_dma_0_M_AXIS_MM2S_TDATA),
        .in_stream_TKEEP(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .in_stream_TLAST(axi_dma_0_M_AXIS_MM2S_TLAST),
        .in_stream_TREADY(axi_dma_0_M_AXIS_MM2S_TREADY),
        .in_stream_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_TVALID(axi_dma_0_M_AXIS_MM2S_TVALID),
        .out_stream_TDATA(mlkem_top_0_out_stream_TDATA),
        .out_stream_TLAST(mlkem_top_0_out_stream_TLAST),
        .out_stream_TREADY(mlkem_top_0_out_stream_TREADY),
        .out_stream_TVALID(mlkem_top_0_out_stream_TVALID),
        .s_axi_control_ARADDR(ps8_0_axi_periph_M01_AXI_ARADDR[4:0]),
        .s_axi_control_ARREADY(ps8_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(ps8_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(ps8_0_axi_periph_M01_AXI_AWADDR[4:0]),
        .s_axi_control_AWREADY(ps8_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(ps8_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_control_BREADY(ps8_0_axi_periph_M01_AXI_BREADY),
        .s_axi_control_BRESP(ps8_0_axi_periph_M01_AXI_BRESP),
        .s_axi_control_BVALID(ps8_0_axi_periph_M01_AXI_BVALID),
        .s_axi_control_RDATA(ps8_0_axi_periph_M01_AXI_RDATA),
        .s_axi_control_RREADY(ps8_0_axi_periph_M01_AXI_RREADY),
        .s_axi_control_RRESP(ps8_0_axi_periph_M01_AXI_RRESP),
        .s_axi_control_RVALID(ps8_0_axi_periph_M01_AXI_RVALID),
        .s_axi_control_WDATA(ps8_0_axi_periph_M01_AXI_WDATA),
        .s_axi_control_WREADY(ps8_0_axi_periph_M01_AXI_WREADY),
        .s_axi_control_WSTRB(ps8_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_control_WVALID(ps8_0_axi_periph_M01_AXI_WVALID));
  thz_pipeline_top_mlkem_top_1_1 mlkem_top_1
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_266M_peripheral_aresetn),
        .in_stream_TDATA(axi_dma_1_M_AXIS_MM2S_TDATA),
        .in_stream_TKEEP(axi_dma_1_M_AXIS_MM2S_TKEEP),
        .in_stream_TLAST(axi_dma_1_M_AXIS_MM2S_TLAST),
        .in_stream_TREADY(axi_dma_1_M_AXIS_MM2S_TREADY),
        .in_stream_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .in_stream_TVALID(axi_dma_1_M_AXIS_MM2S_TVALID),
        .out_stream_TDATA(mlkem_top_1_out_stream_TDATA),
        .out_stream_TLAST(mlkem_top_1_out_stream_TLAST),
        .out_stream_TREADY(mlkem_top_1_out_stream_TREADY),
        .out_stream_TVALID(mlkem_top_1_out_stream_TVALID),
        .s_axi_control_ARADDR(ps8_0_axi_periph_M03_AXI_ARADDR[4:0]),
        .s_axi_control_ARREADY(ps8_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_control_ARVALID(ps8_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_control_AWADDR(ps8_0_axi_periph_M03_AXI_AWADDR[4:0]),
        .s_axi_control_AWREADY(ps8_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_control_AWVALID(ps8_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_control_BREADY(ps8_0_axi_periph_M03_AXI_BREADY),
        .s_axi_control_BRESP(ps8_0_axi_periph_M03_AXI_BRESP),
        .s_axi_control_BVALID(ps8_0_axi_periph_M03_AXI_BVALID),
        .s_axi_control_RDATA(ps8_0_axi_periph_M03_AXI_RDATA),
        .s_axi_control_RREADY(ps8_0_axi_periph_M03_AXI_RREADY),
        .s_axi_control_RRESP(ps8_0_axi_periph_M03_AXI_RRESP),
        .s_axi_control_RVALID(ps8_0_axi_periph_M03_AXI_RVALID),
        .s_axi_control_WDATA(ps8_0_axi_periph_M03_AXI_WDATA),
        .s_axi_control_WREADY(ps8_0_axi_periph_M03_AXI_WREADY),
        .s_axi_control_WSTRB(ps8_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_control_WVALID(ps8_0_axi_periph_M03_AXI_WVALID));
  thz_pipeline_top_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_266M_peripheral_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_266M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M01_ARESETN(rst_ps8_0_266M_peripheral_aresetn),
        .M01_AXI_araddr(ps8_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps8_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps8_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps8_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps8_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps8_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps8_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps8_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps8_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps8_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps8_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps8_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps8_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps8_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps8_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps8_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps8_0_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M02_ARESETN(rst_ps8_0_266M_peripheral_aresetn),
        .M02_AXI_araddr(ps8_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wvalid(ps8_0_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M03_ARESETN(rst_ps8_0_266M_peripheral_aresetn),
        .M03_AXI_araddr(ps8_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(ps8_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ps8_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ps8_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(ps8_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ps8_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(ps8_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(ps8_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(ps8_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(ps8_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(ps8_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(ps8_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(ps8_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(ps8_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(ps8_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(ps8_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ps8_0_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M04_ARESETN(rst_ps8_0_266M_peripheral_aresetn),
        .M04_AXI_araddr(ps8_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(ps8_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ps8_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ps8_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(ps8_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ps8_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(ps8_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(ps8_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(ps8_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(ps8_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(ps8_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(ps8_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(ps8_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(ps8_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(ps8_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(ps8_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ps8_0_axi_periph_M04_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_266M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID));
  thz_pipeline_top_rst_ps8_0_266M_0 rst_ps8_0_266M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_266M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  thz_pipeline_top_xfft_0_0 xfft_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axis_data_tdata(xfft_0_m_axis_data_tdata),
        .m_axis_data_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .m_axis_data_tvalid(xfft_0_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_0_dout}),
        .s_axis_config_tvalid(xlconstant_0_dout),
        .s_axis_data_tdata(mlkem_top_0_out_stream_TDATA),
        .s_axis_data_tlast(mlkem_top_0_out_stream_TLAST),
        .s_axis_data_tready(mlkem_top_0_out_stream_TREADY),
        .s_axis_data_tvalid(mlkem_top_0_out_stream_TVALID));
  thz_pipeline_top_xfft_0_2 xfft_1
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axis_data_tdata(xfft_1_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_1_M_AXIS_DATA_TLAST),
        .m_axis_data_tvalid(xfft_1_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_0_dout}),
        .s_axis_config_tvalid(xlconstant_0_dout),
        .s_axis_data_tdata(mlkem_top_1_out_stream_TDATA),
        .s_axis_data_tlast(mlkem_top_1_out_stream_TLAST),
        .s_axis_data_tready(mlkem_top_1_out_stream_TREADY),
        .s_axis_data_tvalid(mlkem_top_1_out_stream_TVALID));
  thz_pipeline_top_xfft_0_3 xfft_2
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axis_data_tdata(xfft_2_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_2_M_AXIS_DATA_TLAST),
        .m_axis_data_tvalid(xfft_2_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .s_axis_config_tvalid(xlconstant_0_dout),
        .s_axis_data_tdata(beamformer_top_0_out_stream_0_TDATA),
        .s_axis_data_tlast(beamformer_top_0_out_stream_0_TLAST),
        .s_axis_data_tready(beamformer_top_0_out_stream_0_TREADY),
        .s_axis_data_tvalid(beamformer_top_0_out_stream_0_TVALID));
  thz_pipeline_top_xfft_0_4 xfft_3
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axis_data_tdata(xfft_3_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_3_M_AXIS_DATA_TLAST),
        .m_axis_data_tvalid(xfft_3_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconstant_1_dout}),
        .s_axis_config_tvalid(xlconstant_0_dout),
        .s_axis_data_tdata(beamformer_top_0_out_stream_1_TDATA),
        .s_axis_data_tlast(beamformer_top_0_out_stream_1_TLAST),
        .s_axis_data_tready(beamformer_top_0_out_stream_1_TREADY),
        .s_axis_data_tvalid(beamformer_top_0_out_stream_1_TVALID));
  thz_pipeline_top_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  thz_pipeline_top_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  thz_pipeline_top_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(axi_smc_M00_AXI_ARADDR),
        .saxigp0_arburst(axi_smc_M00_AXI_ARBURST),
        .saxigp0_arcache(axi_smc_M00_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen(axi_smc_M00_AXI_ARLEN),
        .saxigp0_arlock(axi_smc_M00_AXI_ARLOCK),
        .saxigp0_arprot(axi_smc_M00_AXI_ARPROT),
        .saxigp0_arqos(axi_smc_M00_AXI_ARQOS),
        .saxigp0_arready(axi_smc_M00_AXI_ARREADY),
        .saxigp0_arsize(axi_smc_M00_AXI_ARSIZE),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(axi_smc_M00_AXI_ARVALID),
        .saxigp0_awaddr(axi_smc_M00_AXI_AWADDR),
        .saxigp0_awburst(axi_smc_M00_AXI_AWBURST),
        .saxigp0_awcache(axi_smc_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(axi_smc_M00_AXI_AWLEN),
        .saxigp0_awlock(axi_smc_M00_AXI_AWLOCK),
        .saxigp0_awprot(axi_smc_M00_AXI_AWPROT),
        .saxigp0_awqos(axi_smc_M00_AXI_AWQOS),
        .saxigp0_awready(axi_smc_M00_AXI_AWREADY),
        .saxigp0_awsize(axi_smc_M00_AXI_AWSIZE),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(axi_smc_M00_AXI_AWVALID),
        .saxigp0_bready(axi_smc_M00_AXI_BREADY),
        .saxigp0_bresp(axi_smc_M00_AXI_BRESP),
        .saxigp0_bvalid(axi_smc_M00_AXI_BVALID),
        .saxigp0_rdata(axi_smc_M00_AXI_RDATA),
        .saxigp0_rlast(axi_smc_M00_AXI_RLAST),
        .saxigp0_rready(axi_smc_M00_AXI_RREADY),
        .saxigp0_rresp(axi_smc_M00_AXI_RRESP),
        .saxigp0_rvalid(axi_smc_M00_AXI_RVALID),
        .saxigp0_wdata(axi_smc_M00_AXI_WDATA),
        .saxigp0_wlast(axi_smc_M00_AXI_WLAST),
        .saxigp0_wready(axi_smc_M00_AXI_WREADY),
        .saxigp0_wstrb(axi_smc_M00_AXI_WSTRB),
        .saxigp0_wvalid(axi_smc_M00_AXI_WVALID),
        .saxigp1_araddr(axi_smc1_M00_AXI_ARADDR),
        .saxigp1_arburst(axi_smc1_M00_AXI_ARBURST),
        .saxigp1_arcache(axi_smc1_M00_AXI_ARCACHE),
        .saxigp1_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp1_arlen(axi_smc1_M00_AXI_ARLEN),
        .saxigp1_arlock(axi_smc1_M00_AXI_ARLOCK),
        .saxigp1_arprot(axi_smc1_M00_AXI_ARPROT),
        .saxigp1_arqos(axi_smc1_M00_AXI_ARQOS),
        .saxigp1_arready(axi_smc1_M00_AXI_ARREADY),
        .saxigp1_arsize(axi_smc1_M00_AXI_ARSIZE),
        .saxigp1_aruser(1'b0),
        .saxigp1_arvalid(axi_smc1_M00_AXI_ARVALID),
        .saxigp1_awaddr(axi_smc1_M00_AXI_AWADDR),
        .saxigp1_awburst(axi_smc1_M00_AXI_AWBURST),
        .saxigp1_awcache(axi_smc1_M00_AXI_AWCACHE),
        .saxigp1_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp1_awlen(axi_smc1_M00_AXI_AWLEN),
        .saxigp1_awlock(axi_smc1_M00_AXI_AWLOCK),
        .saxigp1_awprot(axi_smc1_M00_AXI_AWPROT),
        .saxigp1_awqos(axi_smc1_M00_AXI_AWQOS),
        .saxigp1_awready(axi_smc1_M00_AXI_AWREADY),
        .saxigp1_awsize(axi_smc1_M00_AXI_AWSIZE),
        .saxigp1_awuser(1'b0),
        .saxigp1_awvalid(axi_smc1_M00_AXI_AWVALID),
        .saxigp1_bready(axi_smc1_M00_AXI_BREADY),
        .saxigp1_bresp(axi_smc1_M00_AXI_BRESP),
        .saxigp1_bvalid(axi_smc1_M00_AXI_BVALID),
        .saxigp1_rdata(axi_smc1_M00_AXI_RDATA),
        .saxigp1_rlast(axi_smc1_M00_AXI_RLAST),
        .saxigp1_rready(axi_smc1_M00_AXI_RREADY),
        .saxigp1_rresp(axi_smc1_M00_AXI_RRESP),
        .saxigp1_rvalid(axi_smc1_M00_AXI_RVALID),
        .saxigp1_wdata(axi_smc1_M00_AXI_WDATA),
        .saxigp1_wlast(axi_smc1_M00_AXI_WLAST),
        .saxigp1_wready(axi_smc1_M00_AXI_WREADY),
        .saxigp1_wstrb(axi_smc1_M00_AXI_WSTRB),
        .saxigp1_wvalid(axi_smc1_M00_AXI_WVALID),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihpc1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

module thz_pipeline_top_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [39:0]m00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_BRESP;
  wire m00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_RDATA;
  wire m00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps8_0_axi_periph_RRESP;
  wire m00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps8_0_axi_periph_WDATA;
  wire m00_couplers_to_ps8_0_axi_periph_WREADY;
  wire m00_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m01_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m01_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m01_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m01_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m01_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m01_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_BRESP;
  wire m01_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_RDATA;
  wire m01_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps8_0_axi_periph_RRESP;
  wire m01_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps8_0_axi_periph_WDATA;
  wire m01_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m01_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m02_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m02_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m02_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m02_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m02_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m02_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_BRESP;
  wire m02_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_RDATA;
  wire m02_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps8_0_axi_periph_RRESP;
  wire m02_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps8_0_axi_periph_WDATA;
  wire m02_couplers_to_ps8_0_axi_periph_WREADY;
  wire m02_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m03_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m03_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m03_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m03_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m03_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m03_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_BRESP;
  wire m03_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_RDATA;
  wire m03_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_ps8_0_axi_periph_RRESP;
  wire m03_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_ps8_0_axi_periph_WDATA;
  wire m03_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m03_couplers_to_ps8_0_axi_periph_WVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_ARADDR;
  wire m04_couplers_to_ps8_0_axi_periph_ARREADY;
  wire m04_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [39:0]m04_couplers_to_ps8_0_axi_periph_AWADDR;
  wire m04_couplers_to_ps8_0_axi_periph_AWREADY;
  wire m04_couplers_to_ps8_0_axi_periph_AWVALID;
  wire m04_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_BRESP;
  wire m04_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_RDATA;
  wire m04_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_ps8_0_axi_periph_RRESP;
  wire m04_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_ps8_0_axi_periph_WDATA;
  wire m04_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_ps8_0_axi_periph_WSTRB;
  wire m04_couplers_to_ps8_0_axi_periph_WVALID;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [19:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_ps8_0_axi_periph_WVALID;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps8_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps8_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps8_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps8_0_axi_periph_WVALID;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ps8_0_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ps8_0_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps8_0_axi_periph_WDATA;
  assign M02_AXI_wvalid = m02_couplers_to_ps8_0_axi_periph_WVALID;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ps8_0_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ps8_0_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ps8_0_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ps8_0_axi_periph_WVALID;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ps8_0_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ps8_0_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ps8_0_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_ps8_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps8_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps8_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps8_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps8_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps8_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps8_0_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps8_0_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ps8_0_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ps8_0_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ps8_0_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps8_0_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps8_0_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ps8_0_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ps8_0_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ps8_0_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ps8_0_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ps8_0_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ps8_0_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ps8_0_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ps8_0_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ps8_0_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ps8_0_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ps8_0_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ps8_0_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ps8_0_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ps8_0_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ps8_0_axi_periph_WREADY = M04_AXI_wready;
  assign ps8_0_axi_periph_ACLK_net = ACLK;
  assign ps8_0_axi_periph_ARESETN_net = ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_1YMCB6L m00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wvalid(m00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_73OJD6 m01_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1TFFO4Y m02_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wvalid(m02_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_3K2YQT m03_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1MUB2GZ m04_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_1TZ6HUZ s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ps8_0_axi_periph_ACLK_net),
        .S_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
  thz_pipeline_top_xbar_0 xbar
       (.aclk(ps8_0_axi_periph_ACLK_net),
        .aresetn(ps8_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[11:8],xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
