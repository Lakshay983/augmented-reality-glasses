############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cv_accel
set_top image_passthrough
add_files ../PL/image_passthrough.cpp -cflags "-I/misc/scratch/sp02-senior-design/augmented-reality-glasses/fpga_software/PL/Vitis_Libraries/vision/L1/include -std=c++14"
add_files -tb input_bits.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../PL/image_passthrough_tb.cpp -cflags "-I/misc/scratch/sp02-senior-design/augmented-reality-glasses/fpga_software/PL/Vitis_Libraries/vision/L1/include -std=c++14 -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
#source "./cv_accel/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
