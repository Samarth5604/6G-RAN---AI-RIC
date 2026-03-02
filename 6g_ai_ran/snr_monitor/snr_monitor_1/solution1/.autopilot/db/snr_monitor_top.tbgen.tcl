set moduleName snr_monitor_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {snr_monitor_top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ fft_in_0_V_data_V int 32 regular {axi_s 0 volatile  { fft_in_0 Data } }  }
	{ fft_in_0_V_keep_V int 4 regular {axi_s 0 volatile  { fft_in_0 Keep } }  }
	{ fft_in_0_V_strb_V int 4 regular {axi_s 0 volatile  { fft_in_0 Strb } }  }
	{ fft_in_0_V_last_V int 1 regular {axi_s 0 volatile  { fft_in_0 Last } }  }
	{ fft_in_1_V_data_V int 32 regular {axi_s 0 volatile  { fft_in_1 Data } }  }
	{ fft_in_1_V_keep_V int 4 regular {axi_s 0 volatile  { fft_in_1 Keep } }  }
	{ fft_in_1_V_strb_V int 4 regular {axi_s 0 volatile  { fft_in_1 Strb } }  }
	{ fft_in_1_V_last_V int 1 regular {axi_s 0 volatile  { fft_in_1 Last } }  }
	{ weight_stream_V_data_V int 32 regular {axi_s 0 volatile  { weight_stream Data } }  }
	{ weight_stream_V_keep_V int 4 regular {axi_s 0 volatile  { weight_stream Keep } }  }
	{ weight_stream_V_strb_V int 4 regular {axi_s 0 volatile  { weight_stream Strb } }  }
	{ weight_stream_V_last_V int 1 regular {axi_s 0 volatile  { weight_stream Last } }  }
	{ symbol_num int 4 regular  }
	{ snr_out int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "fft_in_0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "symbol_num", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "snr_out", "interface" : "axi_slave", "bundle":"SNR","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":16}, "offset_end" : {"out":23}} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ fft_in_0_TDATA sc_in sc_lv 32 signal 0 } 
	{ fft_in_0_TVALID sc_in sc_logic 1 invld 3 } 
	{ fft_in_0_TREADY sc_out sc_logic 1 inacc 3 } 
	{ fft_in_0_TKEEP sc_in sc_lv 4 signal 1 } 
	{ fft_in_0_TSTRB sc_in sc_lv 4 signal 2 } 
	{ fft_in_0_TLAST sc_in sc_lv 1 signal 3 } 
	{ fft_in_1_TDATA sc_in sc_lv 32 signal 4 } 
	{ fft_in_1_TVALID sc_in sc_logic 1 invld 7 } 
	{ fft_in_1_TREADY sc_out sc_logic 1 inacc 7 } 
	{ fft_in_1_TKEEP sc_in sc_lv 4 signal 5 } 
	{ fft_in_1_TSTRB sc_in sc_lv 4 signal 6 } 
	{ fft_in_1_TLAST sc_in sc_lv 1 signal 7 } 
	{ weight_stream_TDATA sc_in sc_lv 32 signal 8 } 
	{ weight_stream_TVALID sc_in sc_logic 1 invld 11 } 
	{ weight_stream_TREADY sc_out sc_logic 1 inacc 11 } 
	{ weight_stream_TKEEP sc_in sc_lv 4 signal 9 } 
	{ weight_stream_TSTRB sc_in sc_lv 4 signal 10 } 
	{ weight_stream_TLAST sc_in sc_lv 1 signal 11 } 
	{ symbol_num sc_in sc_lv 4 signal 12 } 
	{ s_axi_SNR_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_SNR_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_SNR_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_SNR_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_SNR_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_SNR_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_SNR_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_SNR_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_SNR_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_SNR_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_SNR_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_SNR_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_SNR_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_SNR_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_SNR_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_SNR_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_SNR_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_SNR_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SNR", "role": "AWADDR" },"address":[{"name":"snr_monitor_top","role":"start","value":"0","valid_bit":"0"},{"name":"snr_monitor_top","role":"continue","value":"0","valid_bit":"4"},{"name":"snr_monitor_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_SNR_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "AWVALID" } },
	{ "name": "s_axi_SNR_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "AWREADY" } },
	{ "name": "s_axi_SNR_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "WVALID" } },
	{ "name": "s_axi_SNR_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "WREADY" } },
	{ "name": "s_axi_SNR_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SNR", "role": "WDATA" } },
	{ "name": "s_axi_SNR_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "SNR", "role": "WSTRB" } },
	{ "name": "s_axi_SNR_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SNR", "role": "ARADDR" },"address":[{"name":"snr_monitor_top","role":"start","value":"0","valid_bit":"0"},{"name":"snr_monitor_top","role":"done","value":"0","valid_bit":"1"},{"name":"snr_monitor_top","role":"idle","value":"0","valid_bit":"2"},{"name":"snr_monitor_top","role":"ready","value":"0","valid_bit":"3"},{"name":"snr_monitor_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"snr_out","role":"data","value":"16"}, {"name":"snr_out","role":"valid","value":"20","valid_bit":"0"}] },
	{ "name": "s_axi_SNR_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "ARVALID" } },
	{ "name": "s_axi_SNR_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "ARREADY" } },
	{ "name": "s_axi_SNR_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "RVALID" } },
	{ "name": "s_axi_SNR_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "RREADY" } },
	{ "name": "s_axi_SNR_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SNR", "role": "RDATA" } },
	{ "name": "s_axi_SNR_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "SNR", "role": "RRESP" } },
	{ "name": "s_axi_SNR_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "BVALID" } },
	{ "name": "s_axi_SNR_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "BREADY" } },
	{ "name": "s_axi_SNR_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "SNR", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SNR", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "fft_in_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_in_0_V_data_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_0_V_keep_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_0_V_strb_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_in_1_V_data_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_1_V_keep_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_1_V_strb_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_stream_V_data_V", "role": "default" }} , 
 	{ "name": "weight_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "weight_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "weight_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "symbol_num", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "symbol_num", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "9", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "snr_monitor_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5130", "EstimateLatencyMax" : "5311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fft_in_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Port" : "fft_in_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "weight_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_snr_monitor_top_Pipeline_weight_drain_fu_167", "Port" : "weight_stream_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "weight_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_snr_monitor_top_Pipeline_weight_drain_fu_167", "Port" : "weight_stream_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "weight_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_snr_monitor_top_Pipeline_weight_drain_fu_167", "Port" : "weight_stream_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "weight_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_snr_monitor_top_Pipeline_weight_drain_fu_167", "Port" : "weight_stream_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "symbol_num", "Type" : "None", "Direction" : "I"},
			{"Name" : "snr_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DMRS_RE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_snr_monitor_top_Pipeline_pilot_snr_fu_181", "Port" : "DMRS_RE", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "DMRS_IM", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_snr_monitor_top_Pipeline_pilot_snr_fu_181", "Port" : "DMRS_IM", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_re_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_im_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_re_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_im_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_buf_loop_fu_145", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "snr_monitor_top_Pipeline_buf_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fft_in_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"BlockSignal" : [
					{"Name" : "fft_in_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft_in_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0"},
			{"Name" : "fft_in_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0"},
			{"Name" : "fft_in_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0"},
			{"Name" : "fft_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fft_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fft_in_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"BlockSignal" : [
					{"Name" : "fft_in_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft_in_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"},
			{"Name" : "fft_in_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"},
			{"Name" : "fft_in_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"}],
		"Loop" : [
			{"Name" : "buf_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_buf_loop_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_weight_drain_fu_167", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "snr_monitor_top_Pipeline_weight_drain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weight_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"BlockSignal" : [
					{"Name" : "weight_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream"},
			{"Name" : "weight_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream"},
			{"Name" : "weight_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream"},
			{"Name" : "h_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_im", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "weight_drain", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_weight_drain_fu_167.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "snr_monitor_top_Pipeline_pilot_snr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "110", "EstimateLatencyMax" : "110",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fft_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fft_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nse_pow_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sig_pow_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "DMRS_RE", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "DMRS_IM", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "pilot_snr", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.DMRS_RE_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.DMRS_IM_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mul_16s_15s_30_1_1_U17", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mul_16s_15s_30_1_1_U18", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mul_16s_16s_32_1_1_U19", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mul_16s_16s_32_1_1_U20", "Parent" : "9"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mac_mulsub_16s_15s_30s_30_4_1_U21", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mac_muladd_16s_15s_30s_30_4_1_U22", "Parent" : "9"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mac_muladd_16s_16s_32s_33_4_1_U23", "Parent" : "9"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.mac_muladd_16s_16s_32s_33_4_1_U24", "Parent" : "9"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_snr_monitor_top_Pipeline_pilot_snr_fu_181.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SNR_s_axi_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_64s_39ns_32_68_seq_1_U38", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	snr_monitor_top {
		fft_in_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		symbol_num {Type I LastRead 0 FirstWrite -1}
		snr_out {Type O LastRead -1 FirstWrite 77}
		DMRS_RE {Type I LastRead -1 FirstWrite -1}
		DMRS_IM {Type I LastRead -1 FirstWrite -1}}
	snr_monitor_top_Pipeline_buf_loop {
		fft_in_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		fft_re {Type O LastRead -1 FirstWrite 1}
		fft_im {Type O LastRead -1 FirstWrite 1}
		fft_in_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}}
	snr_monitor_top_Pipeline_weight_drain {
		weight_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		h_re {Type O LastRead -1 FirstWrite 1}
		h_im {Type O LastRead -1 FirstWrite 1}}
	snr_monitor_top_Pipeline_pilot_snr {
		fft_re {Type I LastRead 5 FirstWrite -1}
		fft_im {Type I LastRead 4 FirstWrite -1}
		h_re {Type I LastRead 1 FirstWrite -1}
		h_im {Type I LastRead 1 FirstWrite -1}
		nse_pow_out {Type O LastRead -1 FirstWrite 8}
		sig_pow_out {Type O LastRead -1 FirstWrite 8}
		DMRS_RE {Type I LastRead -1 FirstWrite -1}
		DMRS_IM {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5130", "Max" : "5311"}
	, {"Name" : "Interval", "Min" : "5131", "Max" : "5312"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fft_in_0_V_data_V { axis {  { fft_in_0_TDATA in_data 0 32 } } }
	fft_in_0_V_keep_V { axis {  { fft_in_0_TKEEP in_data 0 4 } } }
	fft_in_0_V_strb_V { axis {  { fft_in_0_TSTRB in_data 0 4 } } }
	fft_in_0_V_last_V { axis {  { fft_in_0_TVALID in_vld 0 1 }  { fft_in_0_TREADY in_acc 1 1 }  { fft_in_0_TLAST in_data 0 1 } } }
	fft_in_1_V_data_V { axis {  { fft_in_1_TDATA in_data 0 32 } } }
	fft_in_1_V_keep_V { axis {  { fft_in_1_TKEEP in_data 0 4 } } }
	fft_in_1_V_strb_V { axis {  { fft_in_1_TSTRB in_data 0 4 } } }
	fft_in_1_V_last_V { axis {  { fft_in_1_TVALID in_vld 0 1 }  { fft_in_1_TREADY in_acc 1 1 }  { fft_in_1_TLAST in_data 0 1 } } }
	weight_stream_V_data_V { axis {  { weight_stream_TDATA in_data 0 32 } } }
	weight_stream_V_keep_V { axis {  { weight_stream_TKEEP in_data 0 4 } } }
	weight_stream_V_strb_V { axis {  { weight_stream_TSTRB in_data 0 4 } } }
	weight_stream_V_last_V { axis {  { weight_stream_TVALID in_vld 0 1 }  { weight_stream_TREADY in_acc 1 1 }  { weight_stream_TLAST in_data 0 1 } } }
	symbol_num { ap_none {  { symbol_num in_data 0 4 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
