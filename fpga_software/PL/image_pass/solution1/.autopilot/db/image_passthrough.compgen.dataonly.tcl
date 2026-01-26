# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
in_breath_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
in_breath_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
out_breath_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
out_breath_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


