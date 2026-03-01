set moduleName cp_insertion_Pipeline_data_out
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
set C_modelName {cp_insertion_Pipeline_data_out}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buf_data { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buf_data_1 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buf_data_2 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buf_data_3 { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buf_strb { MEM_WIDTH 4 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buf_strb_1 { MEM_WIDTH 4 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buf_strb_2 { MEM_WIDTH 4 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buf_strb_3 { MEM_WIDTH 4 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ buf_data int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ buf_data_1 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ buf_data_2 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ buf_data_3 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ buf_strb int 4 regular {array 256 { 1 3 } 1 1 }  }
	{ buf_strb_1 int 4 regular {array 256 { 1 3 } 1 1 }  }
	{ buf_strb_2 int 4 regular {array 256 { 1 3 } 1 1 }  }
	{ buf_strb_3 int 4 regular {array 256 { 1 3 } 1 1 }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "buf_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf_data_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf_data_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf_data_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf_strb", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "buf_strb_1", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "buf_strb_2", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "buf_strb_3", "interface" : "memory", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 8 } 
	{ buf_data_address0 sc_out sc_lv 8 signal 0 } 
	{ buf_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf_data_q0 sc_in sc_lv 32 signal 0 } 
	{ buf_data_1_address0 sc_out sc_lv 8 signal 1 } 
	{ buf_data_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_data_1_q0 sc_in sc_lv 32 signal 1 } 
	{ buf_data_2_address0 sc_out sc_lv 8 signal 2 } 
	{ buf_data_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_data_2_q0 sc_in sc_lv 32 signal 2 } 
	{ buf_data_3_address0 sc_out sc_lv 8 signal 3 } 
	{ buf_data_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_data_3_q0 sc_in sc_lv 32 signal 3 } 
	{ buf_strb_address0 sc_out sc_lv 8 signal 4 } 
	{ buf_strb_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_strb_q0 sc_in sc_lv 4 signal 4 } 
	{ buf_strb_1_address0 sc_out sc_lv 8 signal 5 } 
	{ buf_strb_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_strb_1_q0 sc_in sc_lv 4 signal 5 } 
	{ buf_strb_2_address0 sc_out sc_lv 8 signal 6 } 
	{ buf_strb_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf_strb_2_q0 sc_in sc_lv 4 signal 6 } 
	{ buf_strb_3_address0 sc_out sc_lv 8 signal 7 } 
	{ buf_strb_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_strb_3_q0 sc_in sc_lv 4 signal 7 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 8 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 11 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 9 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "buf_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_data", "role": "address0" }} , 
 	{ "name": "buf_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_data", "role": "ce0" }} , 
 	{ "name": "buf_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_data", "role": "q0" }} , 
 	{ "name": "buf_data_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_data_1", "role": "address0" }} , 
 	{ "name": "buf_data_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_data_1", "role": "ce0" }} , 
 	{ "name": "buf_data_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_data_1", "role": "q0" }} , 
 	{ "name": "buf_data_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_data_2", "role": "address0" }} , 
 	{ "name": "buf_data_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_data_2", "role": "ce0" }} , 
 	{ "name": "buf_data_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_data_2", "role": "q0" }} , 
 	{ "name": "buf_data_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_data_3", "role": "address0" }} , 
 	{ "name": "buf_data_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_data_3", "role": "ce0" }} , 
 	{ "name": "buf_data_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_data_3", "role": "q0" }} , 
 	{ "name": "buf_strb_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_strb", "role": "address0" }} , 
 	{ "name": "buf_strb_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_strb", "role": "ce0" }} , 
 	{ "name": "buf_strb_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_strb", "role": "q0" }} , 
 	{ "name": "buf_strb_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_strb_1", "role": "address0" }} , 
 	{ "name": "buf_strb_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_strb_1", "role": "ce0" }} , 
 	{ "name": "buf_strb_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_strb_1", "role": "q0" }} , 
 	{ "name": "buf_strb_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_strb_2", "role": "address0" }} , 
 	{ "name": "buf_strb_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_strb_2", "role": "ce0" }} , 
 	{ "name": "buf_strb_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_strb_2", "role": "q0" }} , 
 	{ "name": "buf_strb_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_strb_3", "role": "address0" }} , 
 	{ "name": "buf_strb_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_strb_3", "role": "ce0" }} , 
 	{ "name": "buf_strb_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_strb_3", "role": "q0" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "cp_insertion_Pipeline_data_out",
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
			{"Name" : "buf_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_data_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_data_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_data_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_strb", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_strb_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_strb_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_strb_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"}],
		"Loop" : [
			{"Name" : "data_out", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U29", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_4_1_1_U30", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cp_insertion_Pipeline_data_out {
		buf_data {Type I LastRead 0 FirstWrite -1}
		buf_data_1 {Type I LastRead 0 FirstWrite -1}
		buf_data_2 {Type I LastRead 0 FirstWrite -1}
		buf_data_3 {Type I LastRead 0 FirstWrite -1}
		buf_strb {Type I LastRead 0 FirstWrite -1}
		buf_strb_1 {Type I LastRead 0 FirstWrite -1}
		buf_strb_2 {Type I LastRead 0 FirstWrite -1}
		buf_strb_3 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1026", "Max" : "1026"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buf_data { ap_memory {  { buf_data_address0 mem_address 1 8 }  { buf_data_ce0 mem_ce 1 1 }  { buf_data_q0 mem_dout 0 32 } } }
	buf_data_1 { ap_memory {  { buf_data_1_address0 mem_address 1 8 }  { buf_data_1_ce0 mem_ce 1 1 }  { buf_data_1_q0 mem_dout 0 32 } } }
	buf_data_2 { ap_memory {  { buf_data_2_address0 mem_address 1 8 }  { buf_data_2_ce0 mem_ce 1 1 }  { buf_data_2_q0 mem_dout 0 32 } } }
	buf_data_3 { ap_memory {  { buf_data_3_address0 mem_address 1 8 }  { buf_data_3_ce0 mem_ce 1 1 }  { buf_data_3_q0 mem_dout 0 32 } } }
	buf_strb { ap_memory {  { buf_strb_address0 mem_address 1 8 }  { buf_strb_ce0 mem_ce 1 1 }  { buf_strb_q0 mem_dout 0 4 } } }
	buf_strb_1 { ap_memory {  { buf_strb_1_address0 mem_address 1 8 }  { buf_strb_1_ce0 mem_ce 1 1 }  { buf_strb_1_q0 mem_dout 0 4 } } }
	buf_strb_2 { ap_memory {  { buf_strb_2_address0 mem_address 1 8 }  { buf_strb_2_ce0 mem_ce 1 1 }  { buf_strb_2_q0 mem_dout 0 4 } } }
	buf_strb_3 { ap_memory {  { buf_strb_3_address0 mem_address 1 8 }  { buf_strb_3_ce0 mem_ce 1 1 }  { buf_strb_3_q0 mem_dout 0 4 } } }
	out_stream_V_data_V { axis {  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TLAST out_data 1 1 } } }
}
