# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
in_breath { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
out_breath { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 32
	offset_end 39
}
bgr_fifo_breath { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 48
	offset_end 55
}
pad_fifo_breath { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 64
	offset_end 71
}
gray_fifo_breath { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 80
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


