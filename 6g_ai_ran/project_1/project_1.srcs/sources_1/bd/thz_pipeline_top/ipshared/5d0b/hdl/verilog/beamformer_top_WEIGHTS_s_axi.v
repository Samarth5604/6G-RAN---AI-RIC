// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module beamformer_top_WEIGHTS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 15,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    input  wire [9:0]                    weights_re_0_0_address0,
    input  wire                          weights_re_0_0_ce0,
    output wire [15:0]                   weights_re_0_0_q0,
    input  wire [9:0]                    weights_re_0_1_address0,
    input  wire                          weights_re_0_1_ce0,
    output wire [15:0]                   weights_re_0_1_q0,
    input  wire [9:0]                    weights_re_1_0_address0,
    input  wire                          weights_re_1_0_ce0,
    output wire [15:0]                   weights_re_1_0_q0,
    input  wire [9:0]                    weights_re_1_1_address0,
    input  wire                          weights_re_1_1_ce0,
    output wire [15:0]                   weights_re_1_1_q0,
    input  wire [9:0]                    weights_im_0_0_address0,
    input  wire                          weights_im_0_0_ce0,
    output wire [15:0]                   weights_im_0_0_q0,
    input  wire [9:0]                    weights_im_0_1_address0,
    input  wire                          weights_im_0_1_ce0,
    output wire [15:0]                   weights_im_0_1_q0,
    input  wire [9:0]                    weights_im_1_0_address0,
    input  wire                          weights_im_1_0_ce0,
    output wire [15:0]                   weights_im_1_0_q0,
    input  wire [9:0]                    weights_im_1_1_address0,
    input  wire                          weights_im_1_1_ce0,
    output wire [15:0]                   weights_im_1_1_q0
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_none
//
// 0x0800 ~
// 0x0fff : Memory 'weights_re_0_0' (1024 * 16b)
//          Word n : bit [15: 0] - weights_re_0_0[2n]
//                   bit [31:16] - weights_re_0_0[2n+1]
// 0x1000 ~
// 0x17ff : Memory 'weights_re_0_1' (1024 * 16b)
//          Word n : bit [15: 0] - weights_re_0_1[2n]
//                   bit [31:16] - weights_re_0_1[2n+1]
// 0x1800 ~
// 0x1fff : Memory 'weights_re_1_0' (1024 * 16b)
//          Word n : bit [15: 0] - weights_re_1_0[2n]
//                   bit [31:16] - weights_re_1_0[2n+1]
// 0x2000 ~
// 0x27ff : Memory 'weights_re_1_1' (1024 * 16b)
//          Word n : bit [15: 0] - weights_re_1_1[2n]
//                   bit [31:16] - weights_re_1_1[2n+1]
// 0x2800 ~
// 0x2fff : Memory 'weights_im_0_0' (1024 * 16b)
//          Word n : bit [15: 0] - weights_im_0_0[2n]
//                   bit [31:16] - weights_im_0_0[2n+1]
// 0x3000 ~
// 0x37ff : Memory 'weights_im_0_1' (1024 * 16b)
//          Word n : bit [15: 0] - weights_im_0_1[2n]
//                   bit [31:16] - weights_im_0_1[2n+1]
// 0x3800 ~
// 0x3fff : Memory 'weights_im_1_0' (1024 * 16b)
//          Word n : bit [15: 0] - weights_im_1_0[2n]
//                   bit [31:16] - weights_im_1_0[2n+1]
// 0x4000 ~
// 0x47ff : Memory 'weights_im_1_1' (1024 * 16b)
//          Word n : bit [15: 0] - weights_im_1_1[2n]
//                   bit [31:16] - weights_im_1_1[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_WEIGHTS_RE_0_0_BASE = 15'h0800,
    ADDR_WEIGHTS_RE_0_0_HIGH = 15'h0fff,
    ADDR_WEIGHTS_RE_0_1_BASE = 15'h1000,
    ADDR_WEIGHTS_RE_0_1_HIGH = 15'h17ff,
    ADDR_WEIGHTS_RE_1_0_BASE = 15'h1800,
    ADDR_WEIGHTS_RE_1_0_HIGH = 15'h1fff,
    ADDR_WEIGHTS_RE_1_1_BASE = 15'h2000,
    ADDR_WEIGHTS_RE_1_1_HIGH = 15'h27ff,
    ADDR_WEIGHTS_IM_0_0_BASE = 15'h2800,
    ADDR_WEIGHTS_IM_0_0_HIGH = 15'h2fff,
    ADDR_WEIGHTS_IM_0_1_BASE = 15'h3000,
    ADDR_WEIGHTS_IM_0_1_HIGH = 15'h37ff,
    ADDR_WEIGHTS_IM_1_0_BASE = 15'h3800,
    ADDR_WEIGHTS_IM_1_0_HIGH = 15'h3fff,
    ADDR_WEIGHTS_IM_1_1_BASE = 15'h4000,
    ADDR_WEIGHTS_IM_1_1_HIGH = 15'h47ff,
    WRIDLE                   = 2'd0,
    WRDATA                   = 2'd1,
    WRRESP                   = 2'd2,
    WRRESET                  = 2'd3,
    RDIDLE                   = 2'd0,
    RDDATA                   = 2'd1,
    RDRESET                  = 2'd2,
    ADDR_BITS                = 15;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // memory signals
    wire [8:0]                    int_weights_re_0_0_address0;
    wire                          int_weights_re_0_0_ce0;
    wire [31:0]                   int_weights_re_0_0_q0;
    wire [8:0]                    int_weights_re_0_0_address1;
    wire                          int_weights_re_0_0_ce1;
    wire                          int_weights_re_0_0_we1;
    wire [3:0]                    int_weights_re_0_0_be1;
    wire [31:0]                   int_weights_re_0_0_d1;
    wire [31:0]                   int_weights_re_0_0_q1;
    reg                           int_weights_re_0_0_read;
    reg                           int_weights_re_0_0_write;
    reg  [0:0]                    int_weights_re_0_0_shift0;
    wire [8:0]                    int_weights_re_0_1_address0;
    wire                          int_weights_re_0_1_ce0;
    wire [31:0]                   int_weights_re_0_1_q0;
    wire [8:0]                    int_weights_re_0_1_address1;
    wire                          int_weights_re_0_1_ce1;
    wire                          int_weights_re_0_1_we1;
    wire [3:0]                    int_weights_re_0_1_be1;
    wire [31:0]                   int_weights_re_0_1_d1;
    wire [31:0]                   int_weights_re_0_1_q1;
    reg                           int_weights_re_0_1_read;
    reg                           int_weights_re_0_1_write;
    reg  [0:0]                    int_weights_re_0_1_shift0;
    wire [8:0]                    int_weights_re_1_0_address0;
    wire                          int_weights_re_1_0_ce0;
    wire [31:0]                   int_weights_re_1_0_q0;
    wire [8:0]                    int_weights_re_1_0_address1;
    wire                          int_weights_re_1_0_ce1;
    wire                          int_weights_re_1_0_we1;
    wire [3:0]                    int_weights_re_1_0_be1;
    wire [31:0]                   int_weights_re_1_0_d1;
    wire [31:0]                   int_weights_re_1_0_q1;
    reg                           int_weights_re_1_0_read;
    reg                           int_weights_re_1_0_write;
    reg  [0:0]                    int_weights_re_1_0_shift0;
    wire [8:0]                    int_weights_re_1_1_address0;
    wire                          int_weights_re_1_1_ce0;
    wire [31:0]                   int_weights_re_1_1_q0;
    wire [8:0]                    int_weights_re_1_1_address1;
    wire                          int_weights_re_1_1_ce1;
    wire                          int_weights_re_1_1_we1;
    wire [3:0]                    int_weights_re_1_1_be1;
    wire [31:0]                   int_weights_re_1_1_d1;
    wire [31:0]                   int_weights_re_1_1_q1;
    reg                           int_weights_re_1_1_read;
    reg                           int_weights_re_1_1_write;
    reg  [0:0]                    int_weights_re_1_1_shift0;
    wire [8:0]                    int_weights_im_0_0_address0;
    wire                          int_weights_im_0_0_ce0;
    wire [31:0]                   int_weights_im_0_0_q0;
    wire [8:0]                    int_weights_im_0_0_address1;
    wire                          int_weights_im_0_0_ce1;
    wire                          int_weights_im_0_0_we1;
    wire [3:0]                    int_weights_im_0_0_be1;
    wire [31:0]                   int_weights_im_0_0_d1;
    wire [31:0]                   int_weights_im_0_0_q1;
    reg                           int_weights_im_0_0_read;
    reg                           int_weights_im_0_0_write;
    reg  [0:0]                    int_weights_im_0_0_shift0;
    wire [8:0]                    int_weights_im_0_1_address0;
    wire                          int_weights_im_0_1_ce0;
    wire [31:0]                   int_weights_im_0_1_q0;
    wire [8:0]                    int_weights_im_0_1_address1;
    wire                          int_weights_im_0_1_ce1;
    wire                          int_weights_im_0_1_we1;
    wire [3:0]                    int_weights_im_0_1_be1;
    wire [31:0]                   int_weights_im_0_1_d1;
    wire [31:0]                   int_weights_im_0_1_q1;
    reg                           int_weights_im_0_1_read;
    reg                           int_weights_im_0_1_write;
    reg  [0:0]                    int_weights_im_0_1_shift0;
    wire [8:0]                    int_weights_im_1_0_address0;
    wire                          int_weights_im_1_0_ce0;
    wire [31:0]                   int_weights_im_1_0_q0;
    wire [8:0]                    int_weights_im_1_0_address1;
    wire                          int_weights_im_1_0_ce1;
    wire                          int_weights_im_1_0_we1;
    wire [3:0]                    int_weights_im_1_0_be1;
    wire [31:0]                   int_weights_im_1_0_d1;
    wire [31:0]                   int_weights_im_1_0_q1;
    reg                           int_weights_im_1_0_read;
    reg                           int_weights_im_1_0_write;
    reg  [0:0]                    int_weights_im_1_0_shift0;
    wire [8:0]                    int_weights_im_1_1_address0;
    wire                          int_weights_im_1_1_ce0;
    wire [31:0]                   int_weights_im_1_1_q0;
    wire [8:0]                    int_weights_im_1_1_address1;
    wire                          int_weights_im_1_1_ce1;
    wire                          int_weights_im_1_1_we1;
    wire [3:0]                    int_weights_im_1_1_be1;
    wire [31:0]                   int_weights_im_1_1_d1;
    wire [31:0]                   int_weights_im_1_1_q1;
    reg                           int_weights_im_1_1_read;
    reg                           int_weights_im_1_1_write;
    reg  [0:0]                    int_weights_im_1_1_shift0;

//------------------------Instantiation------------------
// int_weights_re_0_0
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_re_0_0 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_re_0_0_address0 ),
    .ce0       ( int_weights_re_0_0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_re_0_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_re_0_0_address1 ),
    .ce1       ( int_weights_re_0_0_ce1 ),
    .we1       ( int_weights_re_0_0_be1 ),
    .d1        ( int_weights_re_0_0_d1 ),
    .q1        ( int_weights_re_0_0_q1 )
);
// int_weights_re_0_1
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_re_0_1 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_re_0_1_address0 ),
    .ce0       ( int_weights_re_0_1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_re_0_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_re_0_1_address1 ),
    .ce1       ( int_weights_re_0_1_ce1 ),
    .we1       ( int_weights_re_0_1_be1 ),
    .d1        ( int_weights_re_0_1_d1 ),
    .q1        ( int_weights_re_0_1_q1 )
);
// int_weights_re_1_0
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_re_1_0 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_re_1_0_address0 ),
    .ce0       ( int_weights_re_1_0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_re_1_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_re_1_0_address1 ),
    .ce1       ( int_weights_re_1_0_ce1 ),
    .we1       ( int_weights_re_1_0_be1 ),
    .d1        ( int_weights_re_1_0_d1 ),
    .q1        ( int_weights_re_1_0_q1 )
);
// int_weights_re_1_1
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_re_1_1 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_re_1_1_address0 ),
    .ce0       ( int_weights_re_1_1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_re_1_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_re_1_1_address1 ),
    .ce1       ( int_weights_re_1_1_ce1 ),
    .we1       ( int_weights_re_1_1_be1 ),
    .d1        ( int_weights_re_1_1_d1 ),
    .q1        ( int_weights_re_1_1_q1 )
);
// int_weights_im_0_0
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_im_0_0 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_im_0_0_address0 ),
    .ce0       ( int_weights_im_0_0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_im_0_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_im_0_0_address1 ),
    .ce1       ( int_weights_im_0_0_ce1 ),
    .we1       ( int_weights_im_0_0_be1 ),
    .d1        ( int_weights_im_0_0_d1 ),
    .q1        ( int_weights_im_0_0_q1 )
);
// int_weights_im_0_1
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_im_0_1 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_im_0_1_address0 ),
    .ce0       ( int_weights_im_0_1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_im_0_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_im_0_1_address1 ),
    .ce1       ( int_weights_im_0_1_ce1 ),
    .we1       ( int_weights_im_0_1_be1 ),
    .d1        ( int_weights_im_0_1_d1 ),
    .q1        ( int_weights_im_0_1_q1 )
);
// int_weights_im_1_0
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_im_1_0 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_im_1_0_address0 ),
    .ce0       ( int_weights_im_1_0_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_im_1_0_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_im_1_0_address1 ),
    .ce1       ( int_weights_im_1_0_ce1 ),
    .we1       ( int_weights_im_1_0_be1 ),
    .d1        ( int_weights_im_1_0_d1 ),
    .q1        ( int_weights_im_1_0_q1 )
);
// int_weights_im_1_1
beamformer_top_WEIGHTS_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 512 )
) int_weights_im_1_1 (
    .clk0      ( ACLK ),
    .address0  ( int_weights_im_1_1_address0 ),
    .ce0       ( int_weights_im_1_1_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {16{1'b0}} ),
    .q0        ( int_weights_im_1_1_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_weights_im_1_1_address1 ),
    .ce1       ( int_weights_im_1_1_ce1 ),
    .we1       ( int_weights_im_1_1_be1 ),
    .d1        ( int_weights_im_1_1_d1 ),
    .q1        ( int_weights_im_1_1_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_weights_re_0_0_read & !int_weights_re_0_1_read & !int_weights_re_1_0_read & !int_weights_re_1_1_read & !int_weights_im_0_0_read & !int_weights_im_0_1_read & !int_weights_im_1_0_read & !int_weights_im_1_1_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
        end
        else if (int_weights_re_0_0_read) begin
            rdata <= int_weights_re_0_0_q1;
        end
        else if (int_weights_re_0_1_read) begin
            rdata <= int_weights_re_0_1_q1;
        end
        else if (int_weights_re_1_0_read) begin
            rdata <= int_weights_re_1_0_q1;
        end
        else if (int_weights_re_1_1_read) begin
            rdata <= int_weights_re_1_1_q1;
        end
        else if (int_weights_im_0_0_read) begin
            rdata <= int_weights_im_0_0_q1;
        end
        else if (int_weights_im_0_1_read) begin
            rdata <= int_weights_im_0_1_q1;
        end
        else if (int_weights_im_1_0_read) begin
            rdata <= int_weights_im_1_0_q1;
        end
        else if (int_weights_im_1_1_read) begin
            rdata <= int_weights_im_1_1_q1;
        end
    end
end


//------------------------Register logic-----------------

//------------------------Memory logic-------------------
// weights_re_0_0
assign int_weights_re_0_0_address0 = weights_re_0_0_address0 >> 1;
assign int_weights_re_0_0_ce0      = weights_re_0_0_ce0;
assign weights_re_0_0_q0           = int_weights_re_0_0_q0 >> (int_weights_re_0_0_shift0 * 16);
assign int_weights_re_0_0_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_re_0_0_ce1      = ar_hs | (int_weights_re_0_0_write & WVALID);
assign int_weights_re_0_0_we1      = int_weights_re_0_0_write & w_hs;
assign int_weights_re_0_0_be1      = int_weights_re_0_0_we1 ? WSTRB : 'b0;
assign int_weights_re_0_0_d1       = WDATA;
// weights_re_0_1
assign int_weights_re_0_1_address0 = weights_re_0_1_address0 >> 1;
assign int_weights_re_0_1_ce0      = weights_re_0_1_ce0;
assign weights_re_0_1_q0           = int_weights_re_0_1_q0 >> (int_weights_re_0_1_shift0 * 16);
assign int_weights_re_0_1_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_re_0_1_ce1      = ar_hs | (int_weights_re_0_1_write & WVALID);
assign int_weights_re_0_1_we1      = int_weights_re_0_1_write & w_hs;
assign int_weights_re_0_1_be1      = int_weights_re_0_1_we1 ? WSTRB : 'b0;
assign int_weights_re_0_1_d1       = WDATA;
// weights_re_1_0
assign int_weights_re_1_0_address0 = weights_re_1_0_address0 >> 1;
assign int_weights_re_1_0_ce0      = weights_re_1_0_ce0;
assign weights_re_1_0_q0           = int_weights_re_1_0_q0 >> (int_weights_re_1_0_shift0 * 16);
assign int_weights_re_1_0_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_re_1_0_ce1      = ar_hs | (int_weights_re_1_0_write & WVALID);
assign int_weights_re_1_0_we1      = int_weights_re_1_0_write & w_hs;
assign int_weights_re_1_0_be1      = int_weights_re_1_0_we1 ? WSTRB : 'b0;
assign int_weights_re_1_0_d1       = WDATA;
// weights_re_1_1
assign int_weights_re_1_1_address0 = weights_re_1_1_address0 >> 1;
assign int_weights_re_1_1_ce0      = weights_re_1_1_ce0;
assign weights_re_1_1_q0           = int_weights_re_1_1_q0 >> (int_weights_re_1_1_shift0 * 16);
assign int_weights_re_1_1_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_re_1_1_ce1      = ar_hs | (int_weights_re_1_1_write & WVALID);
assign int_weights_re_1_1_we1      = int_weights_re_1_1_write & w_hs;
assign int_weights_re_1_1_be1      = int_weights_re_1_1_we1 ? WSTRB : 'b0;
assign int_weights_re_1_1_d1       = WDATA;
// weights_im_0_0
assign int_weights_im_0_0_address0 = weights_im_0_0_address0 >> 1;
assign int_weights_im_0_0_ce0      = weights_im_0_0_ce0;
assign weights_im_0_0_q0           = int_weights_im_0_0_q0 >> (int_weights_im_0_0_shift0 * 16);
assign int_weights_im_0_0_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_im_0_0_ce1      = ar_hs | (int_weights_im_0_0_write & WVALID);
assign int_weights_im_0_0_we1      = int_weights_im_0_0_write & w_hs;
assign int_weights_im_0_0_be1      = int_weights_im_0_0_we1 ? WSTRB : 'b0;
assign int_weights_im_0_0_d1       = WDATA;
// weights_im_0_1
assign int_weights_im_0_1_address0 = weights_im_0_1_address0 >> 1;
assign int_weights_im_0_1_ce0      = weights_im_0_1_ce0;
assign weights_im_0_1_q0           = int_weights_im_0_1_q0 >> (int_weights_im_0_1_shift0 * 16);
assign int_weights_im_0_1_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_im_0_1_ce1      = ar_hs | (int_weights_im_0_1_write & WVALID);
assign int_weights_im_0_1_we1      = int_weights_im_0_1_write & w_hs;
assign int_weights_im_0_1_be1      = int_weights_im_0_1_we1 ? WSTRB : 'b0;
assign int_weights_im_0_1_d1       = WDATA;
// weights_im_1_0
assign int_weights_im_1_0_address0 = weights_im_1_0_address0 >> 1;
assign int_weights_im_1_0_ce0      = weights_im_1_0_ce0;
assign weights_im_1_0_q0           = int_weights_im_1_0_q0 >> (int_weights_im_1_0_shift0 * 16);
assign int_weights_im_1_0_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_im_1_0_ce1      = ar_hs | (int_weights_im_1_0_write & WVALID);
assign int_weights_im_1_0_we1      = int_weights_im_1_0_write & w_hs;
assign int_weights_im_1_0_be1      = int_weights_im_1_0_we1 ? WSTRB : 'b0;
assign int_weights_im_1_0_d1       = WDATA;
// weights_im_1_1
assign int_weights_im_1_1_address0 = weights_im_1_1_address0 >> 1;
assign int_weights_im_1_1_ce0      = weights_im_1_1_ce0;
assign weights_im_1_1_q0           = int_weights_im_1_1_q0 >> (int_weights_im_1_1_shift0 * 16);
assign int_weights_im_1_1_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_weights_im_1_1_ce1      = ar_hs | (int_weights_im_1_1_write & WVALID);
assign int_weights_im_1_1_we1      = int_weights_im_1_1_write & w_hs;
assign int_weights_im_1_1_be1      = int_weights_im_1_1_we1 ? WSTRB : 'b0;
assign int_weights_im_1_1_d1       = WDATA;
// int_weights_re_0_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_0_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_RE_0_0_BASE && raddr <= ADDR_WEIGHTS_RE_0_0_HIGH)
            int_weights_re_0_0_read <= 1'b1;
        else
            int_weights_re_0_0_read <= 1'b0;
    end
end

// int_weights_re_0_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_0_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_RE_0_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_RE_0_0_HIGH)
            int_weights_re_0_0_write <= 1'b1;
        else if (w_hs)
            int_weights_re_0_0_write <= 1'b0;
    end
end

// int_weights_re_0_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_0_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_re_0_0_ce0)
            int_weights_re_0_0_shift0 <= weights_re_0_0_address0[0];
    end
end

// int_weights_re_0_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_0_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_RE_0_1_BASE && raddr <= ADDR_WEIGHTS_RE_0_1_HIGH)
            int_weights_re_0_1_read <= 1'b1;
        else
            int_weights_re_0_1_read <= 1'b0;
    end
end

// int_weights_re_0_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_0_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_RE_0_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_RE_0_1_HIGH)
            int_weights_re_0_1_write <= 1'b1;
        else if (w_hs)
            int_weights_re_0_1_write <= 1'b0;
    end
end

// int_weights_re_0_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_0_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_re_0_1_ce0)
            int_weights_re_0_1_shift0 <= weights_re_0_1_address0[0];
    end
end

// int_weights_re_1_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_1_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_RE_1_0_BASE && raddr <= ADDR_WEIGHTS_RE_1_0_HIGH)
            int_weights_re_1_0_read <= 1'b1;
        else
            int_weights_re_1_0_read <= 1'b0;
    end
end

// int_weights_re_1_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_1_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_RE_1_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_RE_1_0_HIGH)
            int_weights_re_1_0_write <= 1'b1;
        else if (w_hs)
            int_weights_re_1_0_write <= 1'b0;
    end
end

// int_weights_re_1_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_1_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_re_1_0_ce0)
            int_weights_re_1_0_shift0 <= weights_re_1_0_address0[0];
    end
end

// int_weights_re_1_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_1_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_RE_1_1_BASE && raddr <= ADDR_WEIGHTS_RE_1_1_HIGH)
            int_weights_re_1_1_read <= 1'b1;
        else
            int_weights_re_1_1_read <= 1'b0;
    end
end

// int_weights_re_1_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_1_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_RE_1_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_RE_1_1_HIGH)
            int_weights_re_1_1_write <= 1'b1;
        else if (w_hs)
            int_weights_re_1_1_write <= 1'b0;
    end
end

// int_weights_re_1_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_re_1_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_re_1_1_ce0)
            int_weights_re_1_1_shift0 <= weights_re_1_1_address0[0];
    end
end

// int_weights_im_0_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_0_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_IM_0_0_BASE && raddr <= ADDR_WEIGHTS_IM_0_0_HIGH)
            int_weights_im_0_0_read <= 1'b1;
        else
            int_weights_im_0_0_read <= 1'b0;
    end
end

// int_weights_im_0_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_0_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_IM_0_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_IM_0_0_HIGH)
            int_weights_im_0_0_write <= 1'b1;
        else if (w_hs)
            int_weights_im_0_0_write <= 1'b0;
    end
end

// int_weights_im_0_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_0_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_im_0_0_ce0)
            int_weights_im_0_0_shift0 <= weights_im_0_0_address0[0];
    end
end

// int_weights_im_0_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_0_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_IM_0_1_BASE && raddr <= ADDR_WEIGHTS_IM_0_1_HIGH)
            int_weights_im_0_1_read <= 1'b1;
        else
            int_weights_im_0_1_read <= 1'b0;
    end
end

// int_weights_im_0_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_0_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_IM_0_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_IM_0_1_HIGH)
            int_weights_im_0_1_write <= 1'b1;
        else if (w_hs)
            int_weights_im_0_1_write <= 1'b0;
    end
end

// int_weights_im_0_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_0_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_im_0_1_ce0)
            int_weights_im_0_1_shift0 <= weights_im_0_1_address0[0];
    end
end

// int_weights_im_1_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_1_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_IM_1_0_BASE && raddr <= ADDR_WEIGHTS_IM_1_0_HIGH)
            int_weights_im_1_0_read <= 1'b1;
        else
            int_weights_im_1_0_read <= 1'b0;
    end
end

// int_weights_im_1_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_1_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_IM_1_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_IM_1_0_HIGH)
            int_weights_im_1_0_write <= 1'b1;
        else if (w_hs)
            int_weights_im_1_0_write <= 1'b0;
    end
end

// int_weights_im_1_0_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_1_0_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_im_1_0_ce0)
            int_weights_im_1_0_shift0 <= weights_im_1_0_address0[0];
    end
end

// int_weights_im_1_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_1_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_WEIGHTS_IM_1_1_BASE && raddr <= ADDR_WEIGHTS_IM_1_1_HIGH)
            int_weights_im_1_1_read <= 1'b1;
        else
            int_weights_im_1_1_read <= 1'b0;
    end
end

// int_weights_im_1_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_1_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_WEIGHTS_IM_1_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_WEIGHTS_IM_1_1_HIGH)
            int_weights_im_1_1_write <= 1'b1;
        else if (w_hs)
            int_weights_im_1_1_write <= 1'b0;
    end
end

// int_weights_im_1_1_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_weights_im_1_1_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (weights_im_1_1_ce0)
            int_weights_im_1_1_shift0 <= weights_im_1_1_address0[0];
    end
end


endmodule


`timescale 1ns/1ps

module beamformer_top_WEIGHTS_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

