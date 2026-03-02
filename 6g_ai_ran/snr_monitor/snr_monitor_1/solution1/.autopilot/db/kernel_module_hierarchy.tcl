set ModuleHierarchy {[{
"Name" : "snr_monitor_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_snr_monitor_top_Pipeline_buf_loop_fu_145","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "buf_loop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_snr_monitor_top_Pipeline_weight_drain_fu_167","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "weight_drain","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_snr_monitor_top_Pipeline_pilot_snr_fu_181","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "pilot_snr","ID" : "6","Type" : "pipeline"},]},]
}]}