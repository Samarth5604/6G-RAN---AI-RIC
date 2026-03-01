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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
thz_pipeline_top_beamformer_top_0_3 your_instance_name (
  .ap_clk(ap_clk),                              // input wire ap_clk
  .ap_rst_n(ap_rst_n),                          // input wire ap_rst_n
  .ap_done(ap_done),                            // output wire ap_done
  .ap_idle(ap_idle),                            // output wire ap_idle
  .ap_ready(ap_ready),                          // output wire ap_ready
  .ap_start(ap_start),                          // input wire ap_start
  .in_stream_0_TDATA(in_stream_0_TDATA),        // input wire [31 : 0] in_stream_0_TDATA
  .in_stream_0_TKEEP(in_stream_0_TKEEP),        // input wire [3 : 0] in_stream_0_TKEEP
  .in_stream_0_TLAST(in_stream_0_TLAST),        // input wire [0 : 0] in_stream_0_TLAST
  .in_stream_0_TREADY(in_stream_0_TREADY),      // output wire in_stream_0_TREADY
  .in_stream_0_TSTRB(in_stream_0_TSTRB),        // input wire [3 : 0] in_stream_0_TSTRB
  .in_stream_0_TVALID(in_stream_0_TVALID),      // input wire in_stream_0_TVALID
  .in_stream_1_TDATA(in_stream_1_TDATA),        // input wire [31 : 0] in_stream_1_TDATA
  .in_stream_1_TKEEP(in_stream_1_TKEEP),        // input wire [3 : 0] in_stream_1_TKEEP
  .in_stream_1_TLAST(in_stream_1_TLAST),        // input wire [0 : 0] in_stream_1_TLAST
  .in_stream_1_TREADY(in_stream_1_TREADY),      // output wire in_stream_1_TREADY
  .in_stream_1_TSTRB(in_stream_1_TSTRB),        // input wire [3 : 0] in_stream_1_TSTRB
  .in_stream_1_TVALID(in_stream_1_TVALID),      // input wire in_stream_1_TVALID
  .out_stream_0_TDATA(out_stream_0_TDATA),      // output wire [31 : 0] out_stream_0_TDATA
  .out_stream_0_TKEEP(out_stream_0_TKEEP),      // output wire [3 : 0] out_stream_0_TKEEP
  .out_stream_0_TLAST(out_stream_0_TLAST),      // output wire [0 : 0] out_stream_0_TLAST
  .out_stream_0_TREADY(out_stream_0_TREADY),    // input wire out_stream_0_TREADY
  .out_stream_0_TSTRB(out_stream_0_TSTRB),      // output wire [3 : 0] out_stream_0_TSTRB
  .out_stream_0_TVALID(out_stream_0_TVALID),    // output wire out_stream_0_TVALID
  .out_stream_1_TDATA(out_stream_1_TDATA),      // output wire [31 : 0] out_stream_1_TDATA
  .out_stream_1_TKEEP(out_stream_1_TKEEP),      // output wire [3 : 0] out_stream_1_TKEEP
  .out_stream_1_TLAST(out_stream_1_TLAST),      // output wire [0 : 0] out_stream_1_TLAST
  .out_stream_1_TREADY(out_stream_1_TREADY),    // input wire out_stream_1_TREADY
  .out_stream_1_TSTRB(out_stream_1_TSTRB),      // output wire [3 : 0] out_stream_1_TSTRB
  .out_stream_1_TVALID(out_stream_1_TVALID),    // output wire out_stream_1_TVALID
  .weight_stream_TDATA(weight_stream_TDATA),    // input wire [31 : 0] weight_stream_TDATA
  .weight_stream_TKEEP(weight_stream_TKEEP),    // input wire [3 : 0] weight_stream_TKEEP
  .weight_stream_TLAST(weight_stream_TLAST),    // input wire [0 : 0] weight_stream_TLAST
  .weight_stream_TREADY(weight_stream_TREADY),  // output wire weight_stream_TREADY
  .weight_stream_TSTRB(weight_stream_TSTRB),    // input wire [3 : 0] weight_stream_TSTRB
  .weight_stream_TVALID(weight_stream_TVALID)  // input wire weight_stream_TVALID
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file thz_pipeline_top_beamformer_top_0_3.v when simulating
// the core, thz_pipeline_top_beamformer_top_0_3. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

