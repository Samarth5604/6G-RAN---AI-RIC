set ModuleHierarchy {[{
"Name" : "cp_insertion","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cp_insertion_Pipeline_buf_fill_fu_88","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "buf_fill","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_cp_insertion_Pipeline_cp_out_fu_108","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "cp_out","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_cp_insertion_Pipeline_data_out_fu_128","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "data_out","ID" : "6","Type" : "pipeline"},]},]
}]}