set moduleName process_phase
set isTopModule 0
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
set C_modelName {process_phase}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mode int 32 regular {fifo 0}  }
	{ coeff_stream int 16 regular {fifo 0 volatile }  }
	{ result_stream int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mode", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coeff_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "result_stream", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ mode_dout sc_in sc_lv 32 signal 0 } 
	{ mode_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ mode_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ mode_empty_n sc_in sc_logic 1 signal 0 } 
	{ mode_read sc_out sc_logic 1 signal 0 } 
	{ coeff_stream_dout sc_in sc_lv 16 signal 1 } 
	{ coeff_stream_num_data_valid sc_in sc_lv 9 signal 1 } 
	{ coeff_stream_fifo_cap sc_in sc_lv 9 signal 1 } 
	{ coeff_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ coeff_stream_read sc_out sc_logic 1 signal 1 } 
	{ result_stream_din sc_out sc_lv 16 signal 2 } 
	{ result_stream_num_data_valid sc_in sc_lv 9 signal 2 } 
	{ result_stream_fifo_cap sc_in sc_lv 9 signal 2 } 
	{ result_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ result_stream_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "mode_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mode", "role": "dout" }} , 
 	{ "name": "mode_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mode", "role": "num_data_valid" }} , 
 	{ "name": "mode_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mode", "role": "fifo_cap" }} , 
 	{ "name": "mode_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode", "role": "empty_n" }} , 
 	{ "name": "mode_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode", "role": "read" }} , 
 	{ "name": "coeff_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "coeff_stream", "role": "dout" }} , 
 	{ "name": "coeff_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "coeff_stream", "role": "num_data_valid" }} , 
 	{ "name": "coeff_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "coeff_stream", "role": "fifo_cap" }} , 
 	{ "name": "coeff_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff_stream", "role": "empty_n" }} , 
 	{ "name": "coeff_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff_stream", "role": "read" }} , 
 	{ "name": "result_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "result_stream", "role": "din" }} , 
 	{ "name": "result_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "result_stream", "role": "num_data_valid" }} , 
 	{ "name": "result_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "result_stream", "role": "fifo_cap" }} , 
 	{ "name": "result_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_stream", "role": "full_n" }} , 
 	{ "name": "result_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_stream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "process_phase",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "266", "EstimateLatencyMax" : "266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "coeff_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38", "Port" : "coeff_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "result_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38", "Port" : "result_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "process_phase_Pipeline_VITIS_LOOP_44_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264", "EstimateLatencyMax" : "264",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "coeff_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "coeff_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mode_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "result_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.mul_16s_13ns_29_1_1_U17", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.mul_16s_12ns_28_1_1_U18", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.mul_16s_13s_16_1_1_U19", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.mul_16s_13s_16_1_1_U20", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.mac_muladd_16s_13s_26s_29_4_1_U21", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.mac_muladd_16s_13s_29s_29_4_1_U22", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.mac_muladd_16s_13s_28s_29_4_1_U23", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	process_phase {
		mode {Type I LastRead 0 FirstWrite -1}
		coeff_stream {Type I LastRead 0 FirstWrite -1}
		result_stream {Type O LastRead -1 FirstWrite 7}}
	process_phase_Pipeline_VITIS_LOOP_44_1 {
		coeff_stream {Type I LastRead 0 FirstWrite -1}
		mode_1 {Type I LastRead 0 FirstWrite -1}
		result_stream {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "266", "Max" : "266"}
	, {"Name" : "Interval", "Min" : "266", "Max" : "266"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mode { ap_fifo {  { mode_dout fifo_data_in 0 32 }  { mode_num_data_valid fifo_status_num_data_valid 0 3 }  { mode_fifo_cap fifo_update 0 3 }  { mode_empty_n fifo_status 0 1 }  { mode_read fifo_port_we 1 1 } } }
	coeff_stream { ap_fifo {  { coeff_stream_dout fifo_data_in 0 16 }  { coeff_stream_num_data_valid fifo_status_num_data_valid 0 9 }  { coeff_stream_fifo_cap fifo_update 0 9 }  { coeff_stream_empty_n fifo_status 0 1 }  { coeff_stream_read fifo_port_we 1 1 } } }
	result_stream { ap_fifo {  { result_stream_din fifo_data_in 1 16 }  { result_stream_num_data_valid fifo_status_num_data_valid 0 9 }  { result_stream_fifo_cap fifo_update 0 9 }  { result_stream_full_n fifo_status 0 1 }  { result_stream_write fifo_port_we 1 1 } } }
}
