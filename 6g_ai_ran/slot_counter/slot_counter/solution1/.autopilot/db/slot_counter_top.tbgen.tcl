set moduleName slot_counter_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {slot_counter_top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ symbol_num int 4 regular {pointer 1}  }
	{ slot_num int 7 regular {pointer 1}  }
	{ gpio_override int 1 regular  }
	{ gpio_symbol_num int 4 regular  }
	{ gpio_slot_num int 7 regular  }
	{ sync_req int 1 regular {axi_slave 0}  }
	{ sync_symbol int 4 regular {axi_slave 0}  }
	{ sync_slot int 7 regular {axi_slave 0}  }
	{ symbol_num_out int 4 regular {axi_slave 1}  }
	{ slot_num_out int 7 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "symbol_num", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "slot_num", "interface" : "wire", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gpio_override", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "gpio_symbol_num", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "gpio_slot_num", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "sync_req", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "sync_symbol", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 4, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "sync_slot", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 7, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "symbol_num_out", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_vld","bitwidth" : 4, "direction" : "WRITEONLY", "offset" : {"out":40}, "offset_end" : {"out":47}} , 
 	{ "Name" : "slot_num_out", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_vld","bitwidth" : 7, "direction" : "WRITEONLY", "offset" : {"out":56}, "offset_end" : {"out":63}} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ symbol_num sc_out sc_lv 4 signal 0 } 
	{ slot_num sc_out sc_lv 7 signal 1 } 
	{ gpio_override sc_in sc_lv 1 signal 2 } 
	{ gpio_symbol_num sc_in sc_lv 4 signal 3 } 
	{ gpio_slot_num sc_in sc_lv 7 signal 4 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"slot_counter_top","role":"start","value":"0","valid_bit":"0"},{"name":"slot_counter_top","role":"continue","value":"0","valid_bit":"4"},{"name":"slot_counter_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sync_req","role":"data","value":"16"},{"name":"sync_symbol","role":"data","value":"24"},{"name":"sync_slot","role":"data","value":"32"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"slot_counter_top","role":"start","value":"0","valid_bit":"0"},{"name":"slot_counter_top","role":"done","value":"0","valid_bit":"1"},{"name":"slot_counter_top","role":"idle","value":"0","valid_bit":"2"},{"name":"slot_counter_top","role":"ready","value":"0","valid_bit":"3"},{"name":"slot_counter_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"symbol_num_out","role":"data","value":"40"}, {"name":"symbol_num_out","role":"valid","value":"44","valid_bit":"0"},{"name":"slot_num_out","role":"data","value":"56"}, {"name":"slot_num_out","role":"valid","value":"60","valid_bit":"0"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "symbol_num", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "symbol_num", "role": "default" }} , 
 	{ "name": "slot_num", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "slot_num", "role": "default" }} , 
 	{ "name": "gpio_override", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gpio_override", "role": "default" }} , 
 	{ "name": "gpio_symbol_num", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gpio_symbol_num", "role": "default" }} , 
 	{ "name": "gpio_slot_num", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gpio_slot_num", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "slot_counter_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "symbol_num", "Type" : "None", "Direction" : "O"},
			{"Name" : "slot_num", "Type" : "None", "Direction" : "O"},
			{"Name" : "gpio_override", "Type" : "None", "Direction" : "I"},
			{"Name" : "gpio_symbol_num", "Type" : "None", "Direction" : "I"},
			{"Name" : "gpio_slot_num", "Type" : "None", "Direction" : "I"},
			{"Name" : "sync_req", "Type" : "None", "Direction" : "I"},
			{"Name" : "sync_symbol", "Type" : "None", "Direction" : "I"},
			{"Name" : "sync_slot", "Type" : "None", "Direction" : "I"},
			{"Name" : "symbol_num_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "slot_num_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "slot_cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "phase_cnt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "symbol_cnt", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	slot_counter_top {
		symbol_num {Type O LastRead -1 FirstWrite 1}
		slot_num {Type O LastRead -1 FirstWrite 1}
		gpio_override {Type I LastRead 0 FirstWrite -1}
		gpio_symbol_num {Type I LastRead 0 FirstWrite -1}
		gpio_slot_num {Type I LastRead 0 FirstWrite -1}
		sync_req {Type I LastRead 0 FirstWrite -1}
		sync_symbol {Type I LastRead 0 FirstWrite -1}
		sync_slot {Type I LastRead 0 FirstWrite -1}
		symbol_num_out {Type O LastRead -1 FirstWrite 1}
		slot_num_out {Type O LastRead -1 FirstWrite 1}
		slot_cnt {Type IO LastRead -1 FirstWrite -1}
		phase_cnt {Type IO LastRead -1 FirstWrite -1}
		symbol_cnt {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	symbol_num { ap_none {  { symbol_num out_data 1 4 } } }
	slot_num { ap_none {  { slot_num out_data 1 7 } } }
	gpio_override { ap_none {  { gpio_override in_data 0 1 } } }
	gpio_symbol_num { ap_none {  { gpio_symbol_num in_data 0 4 } } }
	gpio_slot_num { ap_none {  { gpio_slot_num in_data 0 7 } } }
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
