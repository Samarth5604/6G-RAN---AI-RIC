set moduleName chan_est_top_Pipeline_pilot_scan
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
set C_modelName {chan_est_top_Pipeline_pilot_scan}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict pilot_h_im_1 { MEM_WIDTH 16 MEM_SIZE 344 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pilot_h_im { MEM_WIDTH 16 MEM_SIZE 344 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pilot_h_re_1 { MEM_WIDTH 16 MEM_SIZE 344 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict pilot_h_re { MEM_WIDTH 16 MEM_SIZE 344 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict fft_re { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fft_im { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fft_re_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict fft_im_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ pilot_h_im_1 int 16 regular {array 172 { 0 3 } 0 1 }  }
	{ pilot_h_im int 16 regular {array 172 { 0 3 } 0 1 }  }
	{ pilot_h_re_1 int 16 regular {array 172 { 0 3 } 0 1 }  }
	{ pilot_h_re int 16 regular {array 172 { 0 3 } 0 1 }  }
	{ fft_re int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ fft_im int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ fft_re_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ fft_im_1 int 16 regular {array 1024 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "pilot_h_im_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pilot_h_im", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pilot_h_re_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pilot_h_re", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fft_re", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fft_im", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fft_re_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fft_im_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pilot_h_im_1_address0 sc_out sc_lv 8 signal 0 } 
	{ pilot_h_im_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ pilot_h_im_1_we0 sc_out sc_logic 1 signal 0 } 
	{ pilot_h_im_1_d0 sc_out sc_lv 16 signal 0 } 
	{ pilot_h_im_address0 sc_out sc_lv 8 signal 1 } 
	{ pilot_h_im_ce0 sc_out sc_logic 1 signal 1 } 
	{ pilot_h_im_we0 sc_out sc_logic 1 signal 1 } 
	{ pilot_h_im_d0 sc_out sc_lv 16 signal 1 } 
	{ pilot_h_re_1_address0 sc_out sc_lv 8 signal 2 } 
	{ pilot_h_re_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ pilot_h_re_1_we0 sc_out sc_logic 1 signal 2 } 
	{ pilot_h_re_1_d0 sc_out sc_lv 16 signal 2 } 
	{ pilot_h_re_address0 sc_out sc_lv 8 signal 3 } 
	{ pilot_h_re_ce0 sc_out sc_logic 1 signal 3 } 
	{ pilot_h_re_we0 sc_out sc_logic 1 signal 3 } 
	{ pilot_h_re_d0 sc_out sc_lv 16 signal 3 } 
	{ fft_re_address0 sc_out sc_lv 10 signal 4 } 
	{ fft_re_ce0 sc_out sc_logic 1 signal 4 } 
	{ fft_re_q0 sc_in sc_lv 16 signal 4 } 
	{ fft_im_address0 sc_out sc_lv 10 signal 5 } 
	{ fft_im_ce0 sc_out sc_logic 1 signal 5 } 
	{ fft_im_q0 sc_in sc_lv 16 signal 5 } 
	{ fft_re_1_address0 sc_out sc_lv 10 signal 6 } 
	{ fft_re_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ fft_re_1_q0 sc_in sc_lv 16 signal 6 } 
	{ fft_im_1_address0 sc_out sc_lv 10 signal 7 } 
	{ fft_im_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ fft_im_1_q0 sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pilot_h_im_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pilot_h_im_1", "role": "address0" }} , 
 	{ "name": "pilot_h_im_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_im_1", "role": "ce0" }} , 
 	{ "name": "pilot_h_im_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_im_1", "role": "we0" }} , 
 	{ "name": "pilot_h_im_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pilot_h_im_1", "role": "d0" }} , 
 	{ "name": "pilot_h_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pilot_h_im", "role": "address0" }} , 
 	{ "name": "pilot_h_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_im", "role": "ce0" }} , 
 	{ "name": "pilot_h_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_im", "role": "we0" }} , 
 	{ "name": "pilot_h_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pilot_h_im", "role": "d0" }} , 
 	{ "name": "pilot_h_re_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pilot_h_re_1", "role": "address0" }} , 
 	{ "name": "pilot_h_re_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_re_1", "role": "ce0" }} , 
 	{ "name": "pilot_h_re_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_re_1", "role": "we0" }} , 
 	{ "name": "pilot_h_re_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pilot_h_re_1", "role": "d0" }} , 
 	{ "name": "pilot_h_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pilot_h_re", "role": "address0" }} , 
 	{ "name": "pilot_h_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_re", "role": "ce0" }} , 
 	{ "name": "pilot_h_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pilot_h_re", "role": "we0" }} , 
 	{ "name": "pilot_h_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pilot_h_re", "role": "d0" }} , 
 	{ "name": "fft_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_re", "role": "address0" }} , 
 	{ "name": "fft_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_re", "role": "ce0" }} , 
 	{ "name": "fft_re_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_re", "role": "q0" }} , 
 	{ "name": "fft_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_im", "role": "address0" }} , 
 	{ "name": "fft_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_im", "role": "ce0" }} , 
 	{ "name": "fft_im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_im", "role": "q0" }} , 
 	{ "name": "fft_re_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_re_1", "role": "address0" }} , 
 	{ "name": "fft_re_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_re_1", "role": "ce0" }} , 
 	{ "name": "fft_re_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_re_1", "role": "q0" }} , 
 	{ "name": "fft_im_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_im_1", "role": "address0" }} , 
 	{ "name": "fft_im_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_im_1", "role": "ce0" }} , 
 	{ "name": "fft_im_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_im_1", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DMRS_RE_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DMRS_IM_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_15s_30_1_1_U13", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_15s_30_1_1_U14", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_15s_30_1_1_U15", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_15s_30_1_1_U16", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_30s_30_4_1_U17", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_15s_30s_30_4_1_U18", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15s_30s_30_4_1_U19", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_15s_30s_30_4_1_U20", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		DMRS_IM {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "178", "Max" : "178"}
	, {"Name" : "Interval", "Min" : "178", "Max" : "178"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pilot_h_im_1 { ap_memory {  { pilot_h_im_1_address0 mem_address 1 8 }  { pilot_h_im_1_ce0 mem_ce 1 1 }  { pilot_h_im_1_we0 mem_we 1 1 }  { pilot_h_im_1_d0 mem_din 1 16 } } }
	pilot_h_im { ap_memory {  { pilot_h_im_address0 mem_address 1 8 }  { pilot_h_im_ce0 mem_ce 1 1 }  { pilot_h_im_we0 mem_we 1 1 }  { pilot_h_im_d0 mem_din 1 16 } } }
	pilot_h_re_1 { ap_memory {  { pilot_h_re_1_address0 mem_address 1 8 }  { pilot_h_re_1_ce0 mem_ce 1 1 }  { pilot_h_re_1_we0 mem_we 1 1 }  { pilot_h_re_1_d0 mem_din 1 16 } } }
	pilot_h_re { ap_memory {  { pilot_h_re_address0 mem_address 1 8 }  { pilot_h_re_ce0 mem_ce 1 1 }  { pilot_h_re_we0 mem_we 1 1 }  { pilot_h_re_d0 mem_din 1 16 } } }
	fft_re { ap_memory {  { fft_re_address0 mem_address 1 10 }  { fft_re_ce0 mem_ce 1 1 }  { fft_re_q0 mem_dout 0 16 } } }
	fft_im { ap_memory {  { fft_im_address0 mem_address 1 10 }  { fft_im_ce0 mem_ce 1 1 }  { fft_im_q0 mem_dout 0 16 } } }
	fft_re_1 { ap_memory {  { fft_re_1_address0 mem_address 1 10 }  { fft_re_1_ce0 mem_ce 1 1 }  { fft_re_1_q0 mem_dout 0 16 } } }
	fft_im_1 { ap_memory {  { fft_im_1_address0 mem_address 1 10 }  { fft_im_1_ce0 mem_ce 1 1 }  { fft_im_1_q0 mem_dout 0 16 } } }
}
