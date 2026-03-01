set moduleName chan_est_top_Pipeline_weight_out
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
set C_modelName {chan_est_top_Pipeline_weight_out}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict w_re { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_re_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_re_2 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_re_3 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_im { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_im_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_im_2 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_im_3 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ w_re int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ w_re_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ w_re_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ w_re_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ w_im int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ w_im_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ w_im_2 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ w_im_3 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ weight_stream_V_data_V int 32 regular {axi_s 1 volatile  { weight_stream Data } }  }
	{ weight_stream_V_keep_V int 4 regular {axi_s 1 volatile  { weight_stream Keep } }  }
	{ weight_stream_V_strb_V int 4 regular {axi_s 1 volatile  { weight_stream Strb } }  }
	{ weight_stream_V_last_V int 1 regular {axi_s 1 volatile  { weight_stream Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w_re", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w_re_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w_re_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w_re_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w_im", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w_im_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w_im_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w_im_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weight_stream_TREADY sc_in sc_logic 1 outacc 8 } 
	{ w_re_address0 sc_out sc_lv 10 signal 0 } 
	{ w_re_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_re_q0 sc_in sc_lv 16 signal 0 } 
	{ w_re_1_address0 sc_out sc_lv 10 signal 1 } 
	{ w_re_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ w_re_1_q0 sc_in sc_lv 16 signal 1 } 
	{ w_re_2_address0 sc_out sc_lv 10 signal 2 } 
	{ w_re_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ w_re_2_q0 sc_in sc_lv 16 signal 2 } 
	{ w_re_3_address0 sc_out sc_lv 10 signal 3 } 
	{ w_re_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ w_re_3_q0 sc_in sc_lv 16 signal 3 } 
	{ w_im_address0 sc_out sc_lv 10 signal 4 } 
	{ w_im_ce0 sc_out sc_logic 1 signal 4 } 
	{ w_im_q0 sc_in sc_lv 16 signal 4 } 
	{ w_im_1_address0 sc_out sc_lv 10 signal 5 } 
	{ w_im_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ w_im_1_q0 sc_in sc_lv 16 signal 5 } 
	{ w_im_2_address0 sc_out sc_lv 10 signal 6 } 
	{ w_im_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ w_im_2_q0 sc_in sc_lv 16 signal 6 } 
	{ w_im_3_address0 sc_out sc_lv 10 signal 7 } 
	{ w_im_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ w_im_3_q0 sc_in sc_lv 16 signal 7 } 
	{ weight_stream_TDATA sc_out sc_lv 32 signal 8 } 
	{ weight_stream_TVALID sc_out sc_logic 1 outvld 11 } 
	{ weight_stream_TKEEP sc_out sc_lv 4 signal 9 } 
	{ weight_stream_TSTRB sc_out sc_lv 4 signal 10 } 
	{ weight_stream_TLAST sc_out sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weight_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "weight_stream_V_data_V", "role": "default" }} , 
 	{ "name": "w_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_re", "role": "address0" }} , 
 	{ "name": "w_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_re", "role": "ce0" }} , 
 	{ "name": "w_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_re", "role": "q0" }} , 
 	{ "name": "w_re_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_re_1", "role": "address0" }} , 
 	{ "name": "w_re_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_re_1", "role": "ce0" }} , 
 	{ "name": "w_re_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_re_1", "role": "q0" }} , 
 	{ "name": "w_re_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_re_2", "role": "address0" }} , 
 	{ "name": "w_re_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_re_2", "role": "ce0" }} , 
 	{ "name": "w_re_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_re_2", "role": "q0" }} , 
 	{ "name": "w_re_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_re_3", "role": "address0" }} , 
 	{ "name": "w_re_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_re_3", "role": "ce0" }} , 
 	{ "name": "w_re_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_re_3", "role": "q0" }} , 
 	{ "name": "w_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_im", "role": "address0" }} , 
 	{ "name": "w_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_im", "role": "ce0" }} , 
 	{ "name": "w_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_im", "role": "q0" }} , 
 	{ "name": "w_im_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_im_1", "role": "address0" }} , 
 	{ "name": "w_im_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_im_1", "role": "ce0" }} , 
 	{ "name": "w_im_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_im_1", "role": "q0" }} , 
 	{ "name": "w_im_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_im_2", "role": "address0" }} , 
 	{ "name": "w_im_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_im_2", "role": "ce0" }} , 
 	{ "name": "w_im_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_im_2", "role": "q0" }} , 
 	{ "name": "w_im_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "w_im_3", "role": "address0" }} , 
 	{ "name": "w_im_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_im_3", "role": "ce0" }} , 
 	{ "name": "w_im_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w_im_3", "role": "q0" }} , 
 	{ "name": "weight_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_stream_V_data_V", "role": "default" }} , 
 	{ "name": "weight_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "weight_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "weight_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "4099", "Max" : "4099"}
	, {"Name" : "Interval", "Min" : "4099", "Max" : "4099"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w_re { ap_memory {  { w_re_address0 mem_address 1 10 }  { w_re_ce0 mem_ce 1 1 }  { w_re_q0 mem_dout 0 16 } } }
	w_re_1 { ap_memory {  { w_re_1_address0 mem_address 1 10 }  { w_re_1_ce0 mem_ce 1 1 }  { w_re_1_q0 mem_dout 0 16 } } }
	w_re_2 { ap_memory {  { w_re_2_address0 mem_address 1 10 }  { w_re_2_ce0 mem_ce 1 1 }  { w_re_2_q0 mem_dout 0 16 } } }
	w_re_3 { ap_memory {  { w_re_3_address0 mem_address 1 10 }  { w_re_3_ce0 mem_ce 1 1 }  { w_re_3_q0 mem_dout 0 16 } } }
	w_im { ap_memory {  { w_im_address0 mem_address 1 10 }  { w_im_ce0 mem_ce 1 1 }  { w_im_q0 mem_dout 0 16 } } }
	w_im_1 { ap_memory {  { w_im_1_address0 mem_address 1 10 }  { w_im_1_ce0 mem_ce 1 1 }  { w_im_1_q0 mem_dout 0 16 } } }
	w_im_2 { ap_memory {  { w_im_2_address0 mem_address 1 10 }  { w_im_2_ce0 mem_ce 1 1 }  { w_im_2_q0 mem_dout 0 16 } } }
	w_im_3 { ap_memory {  { w_im_3_address0 mem_address 1 10 }  { w_im_3_ce0 mem_ce 1 1 }  { w_im_3_q0 mem_dout 0 16 } } }
	weight_stream_V_data_V { axis {  { weight_stream_TREADY out_acc 0 1 }  { weight_stream_TDATA out_data 1 32 } } }
	weight_stream_V_keep_V { axis {  { weight_stream_TKEEP out_data 1 4 } } }
	weight_stream_V_strb_V { axis {  { weight_stream_TSTRB out_data 1 4 } } }
	weight_stream_V_last_V { axis {  { weight_stream_TVALID out_vld 1 1 }  { weight_stream_TLAST out_data 1 1 } } }
}
