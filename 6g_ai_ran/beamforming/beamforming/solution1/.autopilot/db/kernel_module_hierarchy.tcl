set ModuleHierarchy {[{
"Name" : "beamformer_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_beamformer_top_Pipeline_weight_load_fu_116","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "weight_load","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_beamformer_top_Pipeline_subcarrier_loop_fu_136","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "subcarrier_loop","ID" : "4","Type" : "pipeline"},]},]
}]}