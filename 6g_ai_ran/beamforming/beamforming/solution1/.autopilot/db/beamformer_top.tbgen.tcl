set moduleName beamformer_top
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
set C_modelName {beamformer_top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_stream_0_V_data_V int 32 regular {axi_s 0 volatile  { in_stream_0 Data } }  }
	{ in_stream_0_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream_0 Keep } }  }
	{ in_stream_0_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream_0 Strb } }  }
	{ in_stream_0_V_last_V int 1 regular {axi_s 0 volatile  { in_stream_0 Last } }  }
	{ in_stream_1_V_data_V int 32 regular {axi_s 0 volatile  { in_stream_1 Data } }  }
	{ in_stream_1_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream_1 Keep } }  }
	{ in_stream_1_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream_1 Strb } }  }
	{ in_stream_1_V_last_V int 1 regular {axi_s 0 volatile  { in_stream_1 Last } }  }
	{ out_stream_0_V_data_V int 32 regular {axi_s 1 volatile  { out_stream_0 Data } }  }
	{ out_stream_0_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream_0 Keep } }  }
	{ out_stream_0_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream_0 Strb } }  }
	{ out_stream_0_V_last_V int 1 regular {axi_s 1 volatile  { out_stream_0 Last } }  }
	{ out_stream_1_V_data_V int 32 regular {axi_s 1 volatile  { out_stream_1 Data } }  }
	{ out_stream_1_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream_1 Keep } }  }
	{ out_stream_1_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream_1 Strb } }  }
	{ out_stream_1_V_last_V int 1 regular {axi_s 1 volatile  { out_stream_1 Last } }  }
	{ weight_stream_V_data_V int 32 regular {axi_s 0 volatile  { weight_stream Data } }  }
	{ weight_stream_V_keep_V int 4 regular {axi_s 0 volatile  { weight_stream Keep } }  }
	{ weight_stream_V_strb_V int 4 regular {axi_s 0 volatile  { weight_stream Strb } }  }
	{ weight_stream_V_last_V int 1 regular {axi_s 0 volatile  { weight_stream Last } }  }
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
 	{ "Name" : "out_stream_0_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_0_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_0_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_1_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_1_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_1_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_0_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_0_TVALID sc_in sc_logic 1 invld 3 } 
	{ in_stream_0_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in_stream_0_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_0_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_0_TLAST sc_in sc_lv 1 signal 3 } 
	{ in_stream_1_TDATA sc_in sc_lv 32 signal 4 } 
	{ in_stream_1_TVALID sc_in sc_logic 1 invld 7 } 
	{ in_stream_1_TREADY sc_out sc_logic 1 inacc 7 } 
	{ in_stream_1_TKEEP sc_in sc_lv 4 signal 5 } 
	{ in_stream_1_TSTRB sc_in sc_lv 4 signal 6 } 
	{ in_stream_1_TLAST sc_in sc_lv 1 signal 7 } 
	{ out_stream_0_TDATA sc_out sc_lv 32 signal 8 } 
	{ out_stream_0_TVALID sc_out sc_logic 1 outvld 11 } 
	{ out_stream_0_TREADY sc_in sc_logic 1 outacc 11 } 
	{ out_stream_0_TKEEP sc_out sc_lv 4 signal 9 } 
	{ out_stream_0_TSTRB sc_out sc_lv 4 signal 10 } 
	{ out_stream_0_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_1_TDATA sc_out sc_lv 32 signal 12 } 
	{ out_stream_1_TVALID sc_out sc_logic 1 outvld 15 } 
	{ out_stream_1_TREADY sc_in sc_logic 1 outacc 15 } 
	{ out_stream_1_TKEEP sc_out sc_lv 4 signal 13 } 
	{ out_stream_1_TSTRB sc_out sc_lv 4 signal 14 } 
	{ out_stream_1_TLAST sc_out sc_lv 1 signal 15 } 
	{ weight_stream_TDATA sc_in sc_lv 32 signal 16 } 
	{ weight_stream_TVALID sc_in sc_logic 1 invld 19 } 
	{ weight_stream_TREADY sc_out sc_logic 1 inacc 19 } 
	{ weight_stream_TKEEP sc_in sc_lv 4 signal 17 } 
	{ weight_stream_TSTRB sc_in sc_lv 4 signal 18 } 
	{ weight_stream_TLAST sc_in sc_lv 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_0_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_0_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_0_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_1_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_1_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_1_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_0_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_0_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_0_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_0_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_1_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_1_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_1_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_1_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_stream_V_data_V", "role": "default" }} , 
 	{ "name": "weight_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "weight_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "weight_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "11", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "beamformer_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5133", "EstimateLatencyMax" : "5133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_0_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_0_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_0_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_0_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_1_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_1_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_1_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "in_stream_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "in_stream_1_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_0_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_0_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_0_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_0_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_1_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_1_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_1_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Port" : "out_stream_1_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "weight_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_beamformer_top_Pipeline_weight_load_fu_116", "Port" : "weight_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "weight_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_beamformer_top_Pipeline_weight_load_fu_116", "Port" : "weight_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "weight_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_beamformer_top_Pipeline_weight_load_fu_116", "Port" : "weight_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "weight_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_beamformer_top_Pipeline_weight_load_fu_116", "Port" : "weight_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_re_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_re_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_re_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_re_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_im_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_im_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_im_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_im_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_weight_load_fu_116", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "beamformer_top_Pipeline_weight_load",
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
			{"Name" : "weights_im_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights_im_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights_im_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights_im", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights_re_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights_re_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights_re_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights_re", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream",
				"BlockSignal" : [
					{"Name" : "weight_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream"},
			{"Name" : "weight_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream"},
			{"Name" : "weight_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "weight_stream"}],
		"Loop" : [
			{"Name" : "weight_load", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_weight_load_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U13", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U14", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U15", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U16", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U17", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U18", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U19", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U20", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U21", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U22", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U23", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U24", "Parent" : "11"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U25", "Parent" : "11"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U26", "Parent" : "11"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U27", "Parent" : "11"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.mul_16s_16s_32_1_1_U28", "Parent" : "11"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_beamformer_top_Pipeline_subcarrier_loop_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_weight_stream_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	beamformer_top {
		in_stream_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		out_stream_0_V_data_V {Type O LastRead -1 FirstWrite 4}
		out_stream_0_V_keep_V {Type O LastRead -1 FirstWrite 4}
		out_stream_0_V_strb_V {Type O LastRead -1 FirstWrite 4}
		out_stream_0_V_last_V {Type O LastRead -1 FirstWrite 4}
		out_stream_1_V_data_V {Type O LastRead -1 FirstWrite 4}
		out_stream_1_V_keep_V {Type O LastRead -1 FirstWrite 4}
		out_stream_1_V_strb_V {Type O LastRead -1 FirstWrite 4}
		out_stream_1_V_last_V {Type O LastRead -1 FirstWrite 4}
		weight_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_last_V {Type I LastRead 0 FirstWrite -1}}
	beamformer_top_Pipeline_weight_load {
		weights_im_3 {Type O LastRead -1 FirstWrite 1}
		weights_im_2 {Type O LastRead -1 FirstWrite 1}
		weights_im_1 {Type O LastRead -1 FirstWrite 1}
		weights_im {Type O LastRead -1 FirstWrite 1}
		weights_re_3 {Type O LastRead -1 FirstWrite 1}
		weights_re_2 {Type O LastRead -1 FirstWrite 1}
		weights_re_1 {Type O LastRead -1 FirstWrite 1}
		weights_re {Type O LastRead -1 FirstWrite 1}
		weight_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		weight_stream_V_last_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "5133", "Max" : "5133"}
	, {"Name" : "Interval", "Min" : "5134", "Max" : "5134"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_0_V_data_V { axis {  { in_stream_0_TDATA in_data 0 32 } } }
	in_stream_0_V_keep_V { axis {  { in_stream_0_TKEEP in_data 0 4 } } }
	in_stream_0_V_strb_V { axis {  { in_stream_0_TSTRB in_data 0 4 } } }
	in_stream_0_V_last_V { axis {  { in_stream_0_TVALID in_vld 0 1 }  { in_stream_0_TREADY in_acc 1 1 }  { in_stream_0_TLAST in_data 0 1 } } }
	in_stream_1_V_data_V { axis {  { in_stream_1_TDATA in_data 0 32 } } }
	in_stream_1_V_keep_V { axis {  { in_stream_1_TKEEP in_data 0 4 } } }
	in_stream_1_V_strb_V { axis {  { in_stream_1_TSTRB in_data 0 4 } } }
	in_stream_1_V_last_V { axis {  { in_stream_1_TVALID in_vld 0 1 }  { in_stream_1_TREADY in_acc 1 1 }  { in_stream_1_TLAST in_data 0 1 } } }
	out_stream_0_V_data_V { axis {  { out_stream_0_TDATA out_data 1 32 } } }
	out_stream_0_V_keep_V { axis {  { out_stream_0_TKEEP out_data 1 4 } } }
	out_stream_0_V_strb_V { axis {  { out_stream_0_TSTRB out_data 1 4 } } }
	out_stream_0_V_last_V { axis {  { out_stream_0_TVALID out_vld 1 1 }  { out_stream_0_TREADY out_acc 0 1 }  { out_stream_0_TLAST out_data 1 1 } } }
	out_stream_1_V_data_V { axis {  { out_stream_1_TDATA out_data 1 32 } } }
	out_stream_1_V_keep_V { axis {  { out_stream_1_TKEEP out_data 1 4 } } }
	out_stream_1_V_strb_V { axis {  { out_stream_1_TSTRB out_data 1 4 } } }
	out_stream_1_V_last_V { axis {  { out_stream_1_TVALID out_vld 1 1 }  { out_stream_1_TREADY out_acc 0 1 }  { out_stream_1_TLAST out_data 1 1 } } }
	weight_stream_V_data_V { axis {  { weight_stream_TDATA in_data 0 32 } } }
	weight_stream_V_keep_V { axis {  { weight_stream_TKEEP in_data 0 4 } } }
	weight_stream_V_strb_V { axis {  { weight_stream_TSTRB in_data 0 4 } } }
	weight_stream_V_last_V { axis {  { weight_stream_TVALID in_vld 0 1 }  { weight_stream_TREADY in_acc 1 1 }  { weight_stream_TLAST in_data 0 1 } } }
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
