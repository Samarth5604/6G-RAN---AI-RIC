-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.
-- IP VLNV: xilinx.com:hls:beamformer_top:1.0
-- IP Revision: 2114500775

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT thz_pipeline_top_beamformer_top_0_3
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    in_stream_0_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_stream_0_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_stream_0_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_stream_0_TREADY : OUT STD_LOGIC;
    in_stream_0_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_stream_0_TVALID : IN STD_LOGIC;
    in_stream_1_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_stream_1_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_stream_1_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_stream_1_TREADY : OUT STD_LOGIC;
    in_stream_1_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_stream_1_TVALID : IN STD_LOGIC;
    out_stream_0_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_stream_0_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_stream_0_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_stream_0_TREADY : IN STD_LOGIC;
    out_stream_0_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_stream_0_TVALID : OUT STD_LOGIC;
    out_stream_1_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_stream_1_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_stream_1_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_stream_1_TREADY : IN STD_LOGIC;
    out_stream_1_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_stream_1_TVALID : OUT STD_LOGIC;
    weight_stream_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    weight_stream_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    weight_stream_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    weight_stream_TREADY : OUT STD_LOGIC;
    weight_stream_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    weight_stream_TVALID : IN STD_LOGIC 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : thz_pipeline_top_beamformer_top_0_3
  PORT MAP (
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    ap_done => ap_done,
    ap_idle => ap_idle,
    ap_ready => ap_ready,
    ap_start => ap_start,
    in_stream_0_TDATA => in_stream_0_TDATA,
    in_stream_0_TKEEP => in_stream_0_TKEEP,
    in_stream_0_TLAST => in_stream_0_TLAST,
    in_stream_0_TREADY => in_stream_0_TREADY,
    in_stream_0_TSTRB => in_stream_0_TSTRB,
    in_stream_0_TVALID => in_stream_0_TVALID,
    in_stream_1_TDATA => in_stream_1_TDATA,
    in_stream_1_TKEEP => in_stream_1_TKEEP,
    in_stream_1_TLAST => in_stream_1_TLAST,
    in_stream_1_TREADY => in_stream_1_TREADY,
    in_stream_1_TSTRB => in_stream_1_TSTRB,
    in_stream_1_TVALID => in_stream_1_TVALID,
    out_stream_0_TDATA => out_stream_0_TDATA,
    out_stream_0_TKEEP => out_stream_0_TKEEP,
    out_stream_0_TLAST => out_stream_0_TLAST,
    out_stream_0_TREADY => out_stream_0_TREADY,
    out_stream_0_TSTRB => out_stream_0_TSTRB,
    out_stream_0_TVALID => out_stream_0_TVALID,
    out_stream_1_TDATA => out_stream_1_TDATA,
    out_stream_1_TKEEP => out_stream_1_TKEEP,
    out_stream_1_TLAST => out_stream_1_TLAST,
    out_stream_1_TREADY => out_stream_1_TREADY,
    out_stream_1_TSTRB => out_stream_1_TSTRB,
    out_stream_1_TVALID => out_stream_1_TVALID,
    weight_stream_TDATA => weight_stream_TDATA,
    weight_stream_TKEEP => weight_stream_TKEEP,
    weight_stream_TLAST => weight_stream_TLAST,
    weight_stream_TREADY => weight_stream_TREADY,
    weight_stream_TSTRB => weight_stream_TSTRB,
    weight_stream_TVALID => weight_stream_TVALID
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file thz_pipeline_top_beamformer_top_0_3.vhd when simulating
-- the core, thz_pipeline_top_beamformer_top_0_3. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



