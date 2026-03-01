set moduleName beamformer_top_Pipeline_subcarrier_loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {beamformer_top_Pipeline_subcarrier_loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict weights_re { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_im { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_re_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_im_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_re_2 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_im_2 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_re_3 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict weights_im_3 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ in_stream_0_V_data_V int 32 regular {axi_s 0 volatile  { in_stream_0 Data } }  }
	{ in_stream_0_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream_0 Keep } }  }
	{ in_stream_0_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream_0 Strb } }  }
	{ in_stream_0_V_last_V int 1 regular {axi_s 0 volatile  { in_stream_0 Last } }  }
	{ in_stream_1_V_data_V int 32 regular {axi_s 0 volatile  { in_stream_1 Data } }  }
	{ in_stream_1_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream_1 Keep } }  }
	{ in_stream_1_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream_1 Strb } }  }
	{ in_stream_1_V_last_V int 1 regular {axi_s 0 volatile  { in_stream_1 Last } }  }
	{ weights_re int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ weights_im int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ weights_re_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ weights_im_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ out_stream_0_V_data_V int 32 regular {axi_s 1 volatile  { out_stream_0 Data } }  }
	{ out_stream_0_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream_0 Keep } }  }
	{ out_stream_0_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream_0 Strb } }  }
	{ out_stream_0_V_last_V int 1 regular {axi_s 1 volatile  { out_stream_0 Last } }  }
	{ weights_re_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ weights_im_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ weights_re_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ weights_im_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ out_stream_1_V_data_V int 32 regular {axi_s 1 volatile  { out_stream_1 Data } }  }
	{ out_stream_1_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream_1 Keep } }  }
	{ out_stream_1_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream_1 Strb } }  }
	{ out_stream_1_V_last_V int 1 regular {axi_s 1 volatile  { out_stream_1 Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "weights_re", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_im", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_re_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_im_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_re_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_im_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_re_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weights_im_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_stream_1_TVALID sc_in sc_logic 1 invld 4 } 
	{ out_stream_0_TREADY sc_in sc_logic 1 outacc 12 } 
	{ out_stream_1_TREADY sc_in sc_logic 1 outacc 20 } 
	{ in_stream_0_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_0_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in_stream_0_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_0_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_0_TLAST sc_in sc_lv 1 signal 3 } 
	{ in_stream_1_TDATA sc_in sc_lv 32 signal 4 } 
	{ in_stream_1_TREADY sc_out sc_logic 1 inacc 7 } 
	{ in_stream_1_TKEEP sc_in sc_lv 4 signal 5 } 
	{ in_stream_1_TSTRB sc_in sc_lv 4 signal 6 } 
	{ in_stream_1_TLAST sc_in sc_lv 1 signal 7 } 
	{ weights_re_address0 sc_out sc_lv 10 signal 8 } 
	{ weights_re_ce0 sc_out sc_logic 1 signal 8 } 
	{ weights_re_q0 sc_in sc_lv 16 signal 8 } 
	{ weights_im_address0 sc_out sc_lv 10 signal 9 } 
	{ weights_im_ce0 sc_out sc_logic 1 signal 9 } 
	{ weights_im_q0 sc_in sc_lv 16 signal 9 } 
	{ weights_re_1_address0 sc_out sc_lv 10 signal 10 } 
	{ weights_re_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ weights_re_1_q0 sc_in sc_lv 16 signal 10 } 
	{ weights_im_1_address0 sc_out sc_lv 10 signal 11 } 
	{ weights_im_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ weights_im_1_q0 sc_in sc_lv 16 signal 11 } 
	{ out_stream_0_TDATA sc_out sc_lv 32 signal 12 } 
	{ out_stream_0_TVALID sc_out sc_logic 1 outvld 15 } 
	{ out_stream_0_TKEEP sc_out sc_lv 4 signal 13 } 
	{ out_stream_0_TSTRB sc_out sc_lv 4 signal 14 } 
	{ out_stream_0_TLAST sc_out sc_lv 1 signal 15 } 
	{ weights_re_2_address0 sc_out sc_lv 10 signal 16 } 
	{ weights_re_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ weights_re_2_q0 sc_in sc_lv 16 signal 16 } 
	{ weights_im_2_address0 sc_out sc_lv 10 signal 17 } 
	{ weights_im_2_ce0 sc_out sc_logic 1 signal 17 } 
	{ weights_im_2_q0 sc_in sc_lv 16 signal 17 } 
	{ weights_re_3_address0 sc_out sc_lv 10 signal 18 } 
	{ weights_re_3_ce0 sc_out sc_logic 1 signal 18 } 
	{ weights_re_3_q0 sc_in sc_lv 16 signal 18 } 
	{ weights_im_3_address0 sc_out sc_lv 10 signal 19 } 
	{ weights_im_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ weights_im_3_q0 sc_in sc_lv 16 signal 19 } 
	{ out_stream_1_TDATA sc_out sc_lv 32 signal 20 } 
	{ out_stream_1_TVALID sc_out sc_logic 1 outvld 23 } 
	{ out_stream_1_TKEEP sc_out sc_lv 4 signal 21 } 
	{ out_stream_1_TSTRB sc_out sc_lv 4 signal 22 } 
	{ out_stream_1_TLAST sc_out sc_lv 1 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_0_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_1_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_0_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_1_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_0_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_0_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_0_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_1_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_1_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_1_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "weights_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_re", "role": "address0" }} , 
 	{ "name": "weights_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_re", "role": "ce0" }} , 
 	{ "name": "weights_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_re", "role": "q0" }} , 
 	{ "name": "weights_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_im", "role": "address0" }} , 
 	{ "name": "weights_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_im", "role": "ce0" }} , 
 	{ "name": "weights_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_im", "role": "q0" }} , 
 	{ "name": "weights_re_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_re_1", "role": "address0" }} , 
 	{ "name": "weights_re_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_re_1", "role": "ce0" }} , 
 	{ "name": "weights_re_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_re_1", "role": "q0" }} , 
 	{ "name": "weights_im_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_im_1", "role": "address0" }} , 
 	{ "name": "weights_im_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_im_1", "role": "ce0" }} , 
 	{ "name": "weights_im_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_im_1", "role": "q0" }} , 
 	{ "name": "out_stream_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_0_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_0_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_0_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "weights_re_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_re_2", "role": "address0" }} , 
 	{ "name": "weights_re_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_re_2", "role": "ce0" }} , 
 	{ "name": "weights_re_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_re_2", "role": "q0" }} , 
 	{ "name": "weights_im_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_im_2", "role": "address0" }} , 
 	{ "name": "weights_im_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_im_2", "role": "ce0" }} , 
 	{ "name": "weights_im_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_im_2", "role": "q0" }} , 
 	{ "name": "weights_re_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_re_3", "role": "address0" }} , 
 	{ "name": "weights_re_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_re_3", "role": "ce0" }} , 
 	{ "name": "weights_re_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_re_3", "role": "q0" }} , 
 	{ "name": "weights_im_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_im_3", "role": "address0" }} , 
 	{ "name": "weights_im_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_im_3", "role": "ce0" }} , 
 	{ "name": "weights_im_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weights_im_3", "role": "q0" }} , 
 	{ "name": "out_stream_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_1_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_1_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_1_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_1_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "beamformer_top_Pipeline_subcarrier_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1029", "EstimateLatencyMax" : "1029",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0",
				"BlockSignal" : [
					{"Name" : "in_stream_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0"},
			{"Name" : "in_stream_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0"},
			{"Name" : "in_stream_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0"},
			{"Name" : "in_stream_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1",
				"BlockSignal" : [
					{"Name" : "in_stream_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1"},
			{"Name" : "in_stream_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1"},
			{"Name" : "in_stream_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1"},
			{"Name" : "weights_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_re_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_im_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_stream_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0",
				"BlockSignal" : [
					{"Name" : "out_stream_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0"},
			{"Name" : "out_stream_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0"},
			{"Name" : "out_stream_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0"},
			{"Name" : "weights_re_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_im_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_re_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_im_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_stream_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1",
				"BlockSignal" : [
					{"Name" : "out_stream_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1"},
			{"Name" : "out_stream_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1"},
			{"Name" : "out_stream_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1"}],
		"Loop" : [
			{"Name" : "subcarrier_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U13", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U14", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U15", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U16", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U17", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U18", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U19", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U20", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U21", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U22", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U23", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U24", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U25", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U26", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U27", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_32_1_1_U28", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	beamformer_top_Pipeline_subcarrier_loop {
		in_stream_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		weights_re {Type I LastRead 0 FirstWrite -1}
		weights_im {Type I LastRead 0 FirstWrite -1}
		weights_re_1 {Type I LastRead 0 FirstWrite -1}
		weights_im_1 {Type I LastRead 0 FirstWrite -1}
		out_stream_0_V_data_V {Type O LastRead -1 FirstWrite 4}
		out_stream_0_V_keep_V {Type O LastRead -1 FirstWrite 4}
		out_stream_0_V_strb_V {Type O LastRead -1 FirstWrite 4}
		out_stream_0_V_last_V {Type O LastRead -1 FirstWrite 4}
		weights_re_2 {Type I LastRead 0 FirstWrite -1}
		weights_im_2 {Type I LastRead 0 FirstWrite -1}
		weights_re_3 {Type I LastRead 0 FirstWrite -1}
		weights_im_3 {Type I LastRead 0 FirstWrite -1}
		out_stream_1_V_data_V {Type O LastRead -1 FirstWrite 4}
		out_stream_1_V_keep_V {Type O LastRead -1 FirstWrite 4}
		out_stream_1_V_strb_V {Type O LastRead -1 FirstWrite 4}
		out_stream_1_V_last_V {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1029", "Max" : "1029"}
	, {"Name" : "Interval", "Min" : "1029", "Max" : "1029"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_stream_0_V_data_V { axis {  { in_stream_0_TVALID in_vld 0 1 }  { in_stream_0_TDATA in_data 0 32 } } }
	in_stream_0_V_keep_V { axis {  { in_stream_0_TKEEP in_data 0 4 } } }
	in_stream_0_V_strb_V { axis {  { in_stream_0_TSTRB in_data 0 4 } } }
	in_stream_0_V_last_V { axis {  { in_stream_0_TREADY in_acc 1 1 }  { in_stream_0_TLAST in_data 0 1 } } }
	in_stream_1_V_data_V { axis {  { in_stream_1_TVALID in_vld 0 1 }  { in_stream_1_TDATA in_data 0 32 } } }
	in_stream_1_V_keep_V { axis {  { in_stream_1_TKEEP in_data 0 4 } } }
	in_stream_1_V_strb_V { axis {  { in_stream_1_TSTRB in_data 0 4 } } }
	in_stream_1_V_last_V { axis {  { in_stream_1_TREADY in_acc 1 1 }  { in_stream_1_TLAST in_data 0 1 } } }
	weights_re { ap_memory {  { weights_re_address0 mem_address 1 10 }  { weights_re_ce0 mem_ce 1 1 }  { weights_re_q0 mem_dout 0 16 } } }
	weights_im { ap_memory {  { weights_im_address0 mem_address 1 10 }  { weights_im_ce0 mem_ce 1 1 }  { weights_im_q0 mem_dout 0 16 } } }
	weights_re_1 { ap_memory {  { weights_re_1_address0 mem_address 1 10 }  { weights_re_1_ce0 mem_ce 1 1 }  { weights_re_1_q0 mem_dout 0 16 } } }
	weights_im_1 { ap_memory {  { weights_im_1_address0 mem_address 1 10 }  { weights_im_1_ce0 mem_ce 1 1 }  { weights_im_1_q0 mem_dout 0 16 } } }
	out_stream_0_V_data_V { axis {  { out_stream_0_TREADY out_acc 0 1 }  { out_stream_0_TDATA out_data 1 32 } } }
	out_stream_0_V_keep_V { axis {  { out_stream_0_TKEEP out_data 1 4 } } }
	out_stream_0_V_strb_V { axis {  { out_stream_0_TSTRB out_data 1 4 } } }
	out_stream_0_V_last_V { axis {  { out_stream_0_TVALID out_vld 1 1 }  { out_stream_0_TLAST out_data 1 1 } } }
	weights_re_2 { ap_memory {  { weights_re_2_address0 mem_address 1 10 }  { weights_re_2_ce0 mem_ce 1 1 }  { weights_re_2_q0 mem_dout 0 16 } } }
	weights_im_2 { ap_memory {  { weights_im_2_address0 mem_address 1 10 }  { weights_im_2_ce0 mem_ce 1 1 }  { weights_im_2_q0 mem_dout 0 16 } } }
	weights_re_3 { ap_memory {  { weights_re_3_address0 mem_address 1 10 }  { weights_re_3_ce0 mem_ce 1 1 }  { weights_re_3_q0 mem_dout 0 16 } } }
	weights_im_3 { ap_memory {  { weights_im_3_address0 mem_address 1 10 }  { weights_im_3_ce0 mem_ce 1 1 }  { weights_im_3_q0 mem_dout 0 16 } } }
	out_stream_1_V_data_V { axis {  { out_stream_1_TREADY out_acc 0 1 }  { out_stream_1_TDATA out_data 1 32 } } }
	out_stream_1_V_keep_V { axis {  { out_stream_1_TKEEP out_data 1 4 } } }
	out_stream_1_V_strb_V { axis {  { out_stream_1_TSTRB out_data 1 4 } } }
	out_stream_1_V_last_V { axis {  { out_stream_1_TVALID out_vld 1 1 }  { out_stream_1_TLAST out_data 1 1 } } }
}
