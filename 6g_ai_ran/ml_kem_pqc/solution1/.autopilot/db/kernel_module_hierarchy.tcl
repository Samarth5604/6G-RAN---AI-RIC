set ModuleHierarchy {[{
"Name" : "mlkem_top","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "read_phase_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_read_phase_Pipeline_VITIS_LOOP_30_1_fu_52","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_30_1","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "entry_proc_U0","ID" : "4","Type" : "sequential"},
	{"Name" : "process_phase_U0","ID" : "5","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_44_1","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "write_phase_U0","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_68_1","ID" : "9","Type" : "pipeline"},]},]
}]}