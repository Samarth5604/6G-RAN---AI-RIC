set moduleName chan_est_top_Pipeline_buf_loop
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
set C_modelName {chan_est_top_Pipeline_buf_loop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict fft_im_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict fft_im { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict fft_re_1 { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict fft_re { MEM_WIDTH 16 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ fft_im_1 int 16 regular {array 1024 { 0 3 } 0 1 }  }
	{ fft_im int 16 regular {array 1024 { 0 3 } 0 1 }  }
	{ fft_re_1 int 16 regular {array 1024 { 0 3 } 0 1 }  }
	{ fft_re int 16 regular {array 1024 { 0 3 } 0 1 }  }
	{ fft_in_0_V_data_V int 32 regular {axi_s 0 volatile  { fft_in_0 Data } }  }
	{ fft_in_0_V_keep_V int 4 regular {axi_s 0 volatile  { fft_in_0 Keep } }  }
	{ fft_in_0_V_strb_V int 4 regular {axi_s 0 volatile  { fft_in_0 Strb } }  }
	{ fft_in_0_V_last_V int 1 regular {axi_s 0 volatile  { fft_in_0 Last } }  }
	{ fft_in_1_V_data_V int 32 regular {axi_s 0 volatile  { fft_in_1 Data } }  }
	{ fft_in_1_V_keep_V int 4 regular {axi_s 0 volatile  { fft_in_1 Keep } }  }
	{ fft_in_1_V_strb_V int 4 regular {axi_s 0 volatile  { fft_in_1 Strb } }  }
	{ fft_in_1_V_last_V int 1 regular {axi_s 0 volatile  { fft_in_1 Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "fft_im_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fft_im", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fft_re_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fft_re", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fft_in_0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "fft_in_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fft_in_0_TVALID sc_in sc_logic 1 invld 4 } 
	{ fft_in_1_TVALID sc_in sc_logic 1 invld 8 } 
	{ fft_im_1_address0 sc_out sc_lv 10 signal 0 } 
	{ fft_im_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ fft_im_1_we0 sc_out sc_logic 1 signal 0 } 
	{ fft_im_1_d0 sc_out sc_lv 16 signal 0 } 
	{ fft_im_address0 sc_out sc_lv 10 signal 1 } 
	{ fft_im_ce0 sc_out sc_logic 1 signal 1 } 
	{ fft_im_we0 sc_out sc_logic 1 signal 1 } 
	{ fft_im_d0 sc_out sc_lv 16 signal 1 } 
	{ fft_re_1_address0 sc_out sc_lv 10 signal 2 } 
	{ fft_re_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ fft_re_1_we0 sc_out sc_logic 1 signal 2 } 
	{ fft_re_1_d0 sc_out sc_lv 16 signal 2 } 
	{ fft_re_address0 sc_out sc_lv 10 signal 3 } 
	{ fft_re_ce0 sc_out sc_logic 1 signal 3 } 
	{ fft_re_we0 sc_out sc_logic 1 signal 3 } 
	{ fft_re_d0 sc_out sc_lv 16 signal 3 } 
	{ fft_in_0_TDATA sc_in sc_lv 32 signal 4 } 
	{ fft_in_0_TREADY sc_out sc_logic 1 inacc 7 } 
	{ fft_in_0_TKEEP sc_in sc_lv 4 signal 5 } 
	{ fft_in_0_TSTRB sc_in sc_lv 4 signal 6 } 
	{ fft_in_0_TLAST sc_in sc_lv 1 signal 7 } 
	{ fft_in_1_TDATA sc_in sc_lv 32 signal 8 } 
	{ fft_in_1_TREADY sc_out sc_logic 1 inacc 11 } 
	{ fft_in_1_TKEEP sc_in sc_lv 4 signal 9 } 
	{ fft_in_1_TSTRB sc_in sc_lv 4 signal 10 } 
	{ fft_in_1_TLAST sc_in sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fft_in_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fft_in_0_V_data_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fft_in_1_V_data_V", "role": "default" }} , 
 	{ "name": "fft_im_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_im_1", "role": "address0" }} , 
 	{ "name": "fft_im_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_im_1", "role": "ce0" }} , 
 	{ "name": "fft_im_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_im_1", "role": "we0" }} , 
 	{ "name": "fft_im_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_im_1", "role": "d0" }} , 
 	{ "name": "fft_im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_im", "role": "address0" }} , 
 	{ "name": "fft_im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_im", "role": "ce0" }} , 
 	{ "name": "fft_im_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_im", "role": "we0" }} , 
 	{ "name": "fft_im_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_im", "role": "d0" }} , 
 	{ "name": "fft_re_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_re_1", "role": "address0" }} , 
 	{ "name": "fft_re_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_re_1", "role": "ce0" }} , 
 	{ "name": "fft_re_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_re_1", "role": "we0" }} , 
 	{ "name": "fft_re_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_re_1", "role": "d0" }} , 
 	{ "name": "fft_re_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fft_re", "role": "address0" }} , 
 	{ "name": "fft_re_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_re", "role": "ce0" }} , 
 	{ "name": "fft_re_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_re", "role": "we0" }} , 
 	{ "name": "fft_re_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fft_re", "role": "d0" }} , 
 	{ "name": "fft_in_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_in_0_V_data_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_0_V_keep_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_0_V_strb_V", "role": "default" }} , 
 	{ "name": "fft_in_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_in_0_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_in_1_V_data_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_1_V_keep_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fft_in_1_V_strb_V", "role": "default" }} , 
 	{ "name": "fft_in_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_in_1_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		fft_in_1_V_last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fft_im_1 { ap_memory {  { fft_im_1_address0 mem_address 1 10 }  { fft_im_1_ce0 mem_ce 1 1 }  { fft_im_1_we0 mem_we 1 1 }  { fft_im_1_d0 mem_din 1 16 } } }
	fft_im { ap_memory {  { fft_im_address0 mem_address 1 10 }  { fft_im_ce0 mem_ce 1 1 }  { fft_im_we0 mem_we 1 1 }  { fft_im_d0 mem_din 1 16 } } }
	fft_re_1 { ap_memory {  { fft_re_1_address0 mem_address 1 10 }  { fft_re_1_ce0 mem_ce 1 1 }  { fft_re_1_we0 mem_we 1 1 }  { fft_re_1_d0 mem_din 1 16 } } }
	fft_re { ap_memory {  { fft_re_address0 mem_address 1 10 }  { fft_re_ce0 mem_ce 1 1 }  { fft_re_we0 mem_we 1 1 }  { fft_re_d0 mem_din 1 16 } } }
	fft_in_0_V_data_V { axis {  { fft_in_0_TVALID in_vld 0 1 }  { fft_in_0_TDATA in_data 0 32 } } }
	fft_in_0_V_keep_V { axis {  { fft_in_0_TKEEP in_data 0 4 } } }
	fft_in_0_V_strb_V { axis {  { fft_in_0_TSTRB in_data 0 4 } } }
	fft_in_0_V_last_V { axis {  { fft_in_0_TREADY in_acc 1 1 }  { fft_in_0_TLAST in_data 0 1 } } }
	fft_in_1_V_data_V { axis {  { fft_in_1_TVALID in_vld 0 1 }  { fft_in_1_TDATA in_data 0 32 } } }
	fft_in_1_V_keep_V { axis {  { fft_in_1_TKEEP in_data 0 4 } } }
	fft_in_1_V_strb_V { axis {  { fft_in_1_TSTRB in_data 0 4 } } }
	fft_in_1_V_last_V { axis {  { fft_in_1_TREADY in_acc 1 1 }  { fft_in_1_TLAST in_data 0 1 } } }
}
