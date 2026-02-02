############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project image_pass
set_top image_passthrough
add_files image_passthrough.cpp
add_files -tb image_passthrough_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -description {Pass through test iamge IP} -display_name Image_Passthrough_V2 -format ip_catalog -library user -output /home/ecelrc/students/gwl459/workspace/augmented-reality-glasses/fpga_software/IPs/Image_passthrough_2 -rtl verilog -taxonomy {User IP} -vendor xilinx -version 2.0
source "./image_pass/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/ecelrc/students/gwl459/workspace/augmented-reality-glasses/fpga_software/IPs/Image_passthrough_2
