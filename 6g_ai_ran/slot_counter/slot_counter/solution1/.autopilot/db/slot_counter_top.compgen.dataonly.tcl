# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
sync_req { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
sync_symbol { 
	dir I
	width 4
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
sync_slot { 
	dir I
	width 7
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
symbol_num_out { 
	dir O
	width 4
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
slot_num_out { 
	dir O
	width 7
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


