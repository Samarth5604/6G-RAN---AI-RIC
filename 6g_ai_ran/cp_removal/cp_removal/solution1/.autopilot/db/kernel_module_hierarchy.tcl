set ModuleHierarchy {[{
"Name" : "cp_removal","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cp_removal_Pipeline_cp_discard_fu_52","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "cp_discard","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_cp_removal_Pipeline_cp_forward_fu_64","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "cp_forward","ID" : "4","Type" : "pipeline"},]},]
}]}