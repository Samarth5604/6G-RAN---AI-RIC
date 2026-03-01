set moduleName chan_est_top
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
set C_modelName {chan_est_top}
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
	{ symbol_num int 4 regular  }
	{ weight_stream_V_data_V int 32 regular {axi_s 1 volatile  { weight_stream Data } }  }
	{ weight_stream_V_keep_V int 4 regular {axi_s 1 volatile  { weight_stream Keep } }  }
	{ weight_stream_V_strb_V int 4 regular {axi_s 1 volatile  { weight_stream Strb } }  }
	{ weight_stream_V_last_V int 1 regular {axi_s 1 volatile  { weight_stream Last } }  }
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
 	{ "Name" : "symbol_num", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ symbol_num sc_in sc_lv 4 signal 8 } 
	{ weight_stream_TDATA sc_out sc_lv 32 signal 9 } 
	{ weight_stream_TVALID sc_out sc_logic 1 outvld 12 } 
	{ weight_stream_TREADY sc_in sc_logic 1 outacc 12 } 
	{ weight_stream_TKEEP sc_out sc_lv 4 signal 10 } 
	{ weight_stream_TSTRB sc_out sc_lv 4 signal 11 } 
	{ weight_stream_TLAST sc_out sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "symbol_num", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "symbol_num", "role": "default" }} , 
 	{ "name": "weight_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_stream_V_data_V", "role": "default" }} , 
 	{ "name": "weight_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "weight_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "weight_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "31", "34", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "chan_est_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1030", "EstimateLatencyMax" : "6341",
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
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft_in_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_chan_est_top_Pipeline_buf_loop_fu_152", "Port" : "fft_in_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "symbol_num", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_chan_est_top_Pipeline_weight_out_fu_210", "Port" : "weight_stream_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "weight_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_chan_est_top_Pipeline_weight_out_fu_210", "Port" : "weight_stream_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "weight_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_chan_est_top_Pipeline_weight_out_fu_210", "Port" : "weight_stream_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "weight_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_chan_est_top_Pipeline_weight_out_fu_210", "Port" : "weight_stream_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "DMRS_RE", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_chan_est_top_Pipeline_pilot_scan_fu_176", "Port" : "DMRS_RE", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "DMRS_IM", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_chan_est_top_Pipeline_pilot_scan_fu_176", "Port" : "DMRS_IM", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "PILOT_FOR_K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_chan_est_top_Pipeline_zoh_fill_fu_192", "Port" : "PILOT_FOR_K", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_re_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_re_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_im_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_im_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pilot_h_re_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pilot_h_re_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pilot_h_im_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pilot_h_im_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_re_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_re_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_re_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_re_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_im_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_im_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_im_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_im_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_buf_loop_fu_152", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "chan_est_top_Pipeline_buf_loop",
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
			{"Name" : "fft_im_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fft_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fft_re_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fft_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fft_in_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0",
				"BlockSignal" : [
					{"Name" : "fft_in_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft_in_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0"},
			{"Name" : "fft_in_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0"},
			{"Name" : "fft_in_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_0"},
			{"Name" : "fft_in_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"BlockSignal" : [
					{"Name" : "fft_in_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft_in_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"},
			{"Name" : "fft_in_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"},
			{"Name" : "fft_in_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"}],
		"Loop" : [
			{"Name" : "buf_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_buf_loop_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "chan_est_top_Pipeline_pilot_scan",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "178", "EstimateLatencyMax" : "178",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pilot_h_im_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pilot_h_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pilot_h_re_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pilot_h_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fft_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fft_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fft_re_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fft_im_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "DMRS_RE", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "DMRS_IM", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "pilot_scan", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.DMRS_RE_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.DMRS_IM_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mul_16s_15s_30_1_1_U13", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mul_16s_15s_30_1_1_U14", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mul_16s_15s_30_1_1_U15", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mul_16s_15s_30_1_1_U16", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mac_muladd_16s_15s_30s_30_4_1_U17", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mac_mulsub_16s_15s_30s_30_4_1_U18", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mac_muladd_16s_15s_30s_30_4_1_U19", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.mac_mulsub_16s_15s_30s_30_4_1_U20", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_pilot_scan_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_zoh_fill_fu_192", "Parent" : "0", "Child" : ["32", "33"],
		"CDFG" : "chan_est_top_Pipeline_zoh_fill",
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
			{"Name" : "w_im_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_im_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_im_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_re_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_re_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_re_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "w_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pilot_h_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pilot_h_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pilot_h_re_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pilot_h_im_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "PILOT_FOR_K", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "zoh_fill", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_zoh_fill_fu_192.PILOT_FOR_K_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_zoh_fill_fu_192.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_weight_out_fu_210", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "chan_est_top_Pipeline_weight_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w_re", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_re_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_re_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_re_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_im_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_im_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w_im_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream",
				"BlockSignal" : [
					{"Name" : "weight_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream"},
			{"Name" : "weight_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream"},
			{"Name" : "weight_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "weight_stream"}],
		"Loop" : [
			{"Name" : "weight_out", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_chan_est_top_Pipeline_weight_out_fu_210.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	chan_est_top {
		fft_in_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		symbol_num {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_data_V {Type O LastRead -1 FirstWrite 2}
		weight_stream_V_keep_V {Type O LastRead -1 FirstWrite 2}
		weight_stream_V_strb_V {Type O LastRead -1 FirstWrite 2}
		weight_stream_V_last_V {Type O LastRead -1 FirstWrite 2}
		DMRS_RE {Type I LastRead -1 FirstWrite -1}
		DMRS_IM {Type I LastRead -1 FirstWrite -1}
		PILOT_FOR_K {Type I LastRead -1 FirstWrite -1}}
	chan_est_top_Pipeline_buf_loop {
		fft_im_1 {Type O LastRead -1 FirstWrite 1}
		fft_im {Type O LastRead -1 FirstWrite 1}
		fft_re_1 {Type O LastRead -1 FirstWrite 1}
		fft_re {Type O LastRead -1 FirstWrite 1}
		fft_in_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}}
	chan_est_top_Pipeline_pilot_scan {
		pilot_h_im_1 {Type O LastRead -1 FirstWrite 5}
		pilot_h_im {Type O LastRead -1 FirstWrite 5}
		pilot_h_re_1 {Type O LastRead -1 FirstWrite 5}
		pilot_h_re {Type O LastRead -1 FirstWrite 5}
		fft_re {Type I LastRead 1 FirstWrite -1}
		fft_im {Type I LastRead 1 FirstWrite -1}
		fft_re_1 {Type I LastRead 1 FirstWrite -1}
		fft_im_1 {Type I LastRead 1 FirstWrite -1}
		DMRS_RE {Type I LastRead -1 FirstWrite -1}
		DMRS_IM {Type I LastRead -1 FirstWrite -1}}
	chan_est_top_Pipeline_zoh_fill {
		w_im_3 {Type O LastRead -1 FirstWrite 4}
		w_im_2 {Type O LastRead -1 FirstWrite 4}
		w_im_1 {Type O LastRead -1 FirstWrite 4}
		w_im {Type O LastRead -1 FirstWrite 4}
		w_re_3 {Type O LastRead -1 FirstWrite 4}
		w_re_2 {Type O LastRead -1 FirstWrite 4}
		w_re_1 {Type O LastRead -1 FirstWrite 4}
		w_re {Type O LastRead -1 FirstWrite 4}
		pilot_h_re {Type I LastRead 2 FirstWrite -1}
		pilot_h_im {Type I LastRead 2 FirstWrite -1}
		pilot_h_re_1 {Type I LastRead 2 FirstWrite -1}
		pilot_h_im_1 {Type I LastRead 2 FirstWrite -1}
		PILOT_FOR_K {Type I LastRead -1 FirstWrite -1}}
	chan_est_top_Pipeline_weight_out {
		w_re {Type I LastRead 0 FirstWrite -1}
		w_re_1 {Type I LastRead 0 FirstWrite -1}
		w_re_2 {Type I LastRead 0 FirstWrite -1}
		w_re_3 {Type I LastRead 0 FirstWrite -1}
		w_im {Type I LastRead 0 FirstWrite -1}
		w_im_1 {Type I LastRead 0 FirstWrite -1}
		w_im_2 {Type I LastRead 0 FirstWrite -1}
		w_im_3 {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_data_V {Type O LastRead -1 FirstWrite 2}
		weight_stream_V_keep_V {Type O LastRead -1 FirstWrite 2}
		weight_stream_V_strb_V {Type O LastRead -1 FirstWrite 2}
		weight_stream_V_last_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1030", "Max" : "6341"}
	, {"Name" : "Interval", "Min" : "1031", "Max" : "6342"}
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
	symbol_num { ap_none {  { symbol_num in_data 0 4 } } }
	weight_stream_V_data_V { axis {  { weight_stream_TDATA out_data 1 32 } } }
	weight_stream_V_keep_V { axis {  { weight_stream_TKEEP out_data 1 4 } } }
	weight_stream_V_strb_V { axis {  { weight_stream_TSTRB out_data 1 4 } } }
	weight_stream_V_last_V { axis {  { weight_stream_TVALID out_vld 1 1 }  { weight_stream_TREADY out_acc 0 1 }  { weight_stream_TLAST out_data 1 1 } } }
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
