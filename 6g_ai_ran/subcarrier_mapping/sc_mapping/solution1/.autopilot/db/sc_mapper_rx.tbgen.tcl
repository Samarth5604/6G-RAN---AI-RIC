set moduleName sc_mapper_rx
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
set C_modelName {sc_mapper_rx}
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
	{ data_out_0_V_data_V int 32 regular {axi_s 1 volatile  { data_out_0 Data } }  }
	{ data_out_0_V_keep_V int 4 regular {axi_s 1 volatile  { data_out_0 Keep } }  }
	{ data_out_0_V_strb_V int 4 regular {axi_s 1 volatile  { data_out_0 Strb } }  }
	{ data_out_0_V_last_V int 1 regular {axi_s 1 volatile  { data_out_0 Last } }  }
	{ data_out_1_V_data_V int 32 regular {axi_s 1 volatile  { data_out_1 Data } }  }
	{ data_out_1_V_keep_V int 4 regular {axi_s 1 volatile  { data_out_1 Keep } }  }
	{ data_out_1_V_strb_V int 4 regular {axi_s 1 volatile  { data_out_1 Strb } }  }
	{ data_out_1_V_last_V int 1 regular {axi_s 1 volatile  { data_out_1 Last } }  }
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
 	{ "Name" : "data_out_0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fft_in_0_TVALID sc_in sc_logic 1 invld 3 } 
	{ fft_in_1_TVALID sc_in sc_logic 1 invld 7 } 
	{ data_out_0_TREADY sc_in sc_logic 1 outacc 11 } 
	{ data_out_1_TREADY sc_in sc_logic 1 outacc 15 } 
	{ fft_in_0_TDATA sc_in sc_lv 32 signal 0 } 
	{ fft_in_0_TREADY sc_out sc_logic 1 inacc 3 } 
	{ fft_in_0_TKEEP sc_in sc_lv 4 signal 1 } 
	{ fft_in_0_TSTRB sc_in sc_lv 4 signal 2 } 
	{ fft_in_0_TLAST sc_in sc_lv 1 signal 3 } 
	{ fft_in_1_TDATA sc_in sc_lv 32 signal 4 } 
	{ fft_in_1_TREADY sc_out sc_logic 1 inacc 7 } 
	{ fft_in_1_TKEEP sc_in sc_lv 4 signal 5 } 
	{ fft_in_1_TSTRB sc_in sc_lv 4 signal 6 } 
	{ fft_in_1_TLAST sc_in sc_lv 1 signal 7 } 
	{ data_out_0_TDATA sc_out sc_lv 32 signal 8 } 
	{ data_out_0_TVALID sc_out sc_logic 1 outvld 11 } 
	{ data_out_0_TKEEP sc_out sc_lv 4 signal 9 } 
	{ data_out_0_TSTRB sc_out sc_lv 4 signal 10 } 
	{ data_out_0_TLAST sc_out sc_lv 1 signal 11 } 
	{ data_out_1_TDATA sc_out sc_lv 32 signal 12 } 
	{ data_out_1_TVALID sc_out sc_logic 1 outvld 15 } 
	{ data_out_1_TKEEP sc_out sc_lv 4 signal 13 } 
	{ data_out_1_TSTRB sc_out sc_lv 4 signal 14 } 
	{ data_out_1_TLAST sc_out sc_lv 1 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fft_in_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_0_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_1_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_in_0_V_data_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_0_V_keep_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_0_V_strb_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_in_1_V_data_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_1_V_keep_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_1_V_strb_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_0_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_0_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out_0_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out_0_V_strb_V", "role": "default" }} , 
 	{ "name": "data_out_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_0_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_1_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_1_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out_1_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_out_1_V_strb_V", "role": "default" }} , 
 	{ "name": "data_out_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_1_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "sc_mapper_rx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1028", "EstimateLatencyMax" : "1028",
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
			{"Name" : "fft_in_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1",
				"BlockSignal" : [
					{"Name" : "fft_in_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft_in_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"},
			{"Name" : "fft_in_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"},
			{"Name" : "fft_in_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "fft_in_1"},
			{"Name" : "data_out_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_0",
				"BlockSignal" : [
					{"Name" : "data_out_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_0"},
			{"Name" : "data_out_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_0"},
			{"Name" : "data_out_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_0"},
			{"Name" : "data_out_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_1",
				"BlockSignal" : [
					{"Name" : "data_out_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_1"},
			{"Name" : "data_out_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_1"},
			{"Name" : "data_out_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "data_out_1"},
			{"Name" : "DATA_SC_IDX", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "scan_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DATA_SC_IDX_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_delay_pipe_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_fft_in_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_out_1_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sc_mapper_rx {
		fft_in_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		fft_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		data_out_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		data_out_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		data_out_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		data_out_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		data_out_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		data_out_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		data_out_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		data_out_1_V_last_V {Type O LastRead -1 FirstWrite 2}
		DATA_SC_IDX {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1028", "Max" : "1028"}
	, {"Name" : "Interval", "Min" : "1029", "Max" : "1029"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
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
	data_out_0_V_data_V { axis {  { data_out_0_TREADY out_acc 0 1 }  { data_out_0_TDATA out_data 1 32 } } }
	data_out_0_V_keep_V { axis {  { data_out_0_TKEEP out_data 1 4 } } }
	data_out_0_V_strb_V { axis {  { data_out_0_TSTRB out_data 1 4 } } }
	data_out_0_V_last_V { axis {  { data_out_0_TVALID out_vld 1 1 }  { data_out_0_TLAST out_data 1 1 } } }
	data_out_1_V_data_V { axis {  { data_out_1_TREADY out_acc 0 1 }  { data_out_1_TDATA out_data 1 32 } } }
	data_out_1_V_keep_V { axis {  { data_out_1_TKEEP out_data 1 4 } } }
	data_out_1_V_strb_V { axis {  { data_out_1_TSTRB out_data 1 4 } } }
	data_out_1_V_last_V { axis {  { data_out_1_TVALID out_vld 1 1 }  { data_out_1_TLAST out_data 1 1 } } }
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
