# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_SNR {
snr_out { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict SNR $port_SNR


