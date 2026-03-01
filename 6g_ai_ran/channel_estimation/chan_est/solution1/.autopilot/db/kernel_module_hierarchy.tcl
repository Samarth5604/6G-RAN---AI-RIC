set ModuleHierarchy {[{
"Name" : "chan_est_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_chan_est_top_Pipeline_buf_loop_fu_152","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "buf_loop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_chan_est_top_Pipeline_pilot_scan_fu_176","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "pilot_scan","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_chan_est_top_Pipeline_zoh_fill_fu_192","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "zoh_fill","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_chan_est_top_Pipeline_weight_out_fu_210","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "weight_out","ID" : "8","Type" : "pipeline"},]},]
}]}