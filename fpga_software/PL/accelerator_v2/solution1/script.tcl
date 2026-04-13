############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project accelerator_v2
set_top accelerator_v2
add_files accelerator_v2.cpp -cflags "-Wno-unknown-pragmas -I/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include"
add_files -tb accelerator_v2_tb.cpp -cflags "-I/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb tb_data -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
config_export -display_name Accelerator_v4.2 -format ip_catalog -output /misc/scratch/gwl459/augmented-reality-glasses/fpga_software/Accelerators -rtl verilog -version 4.2
source "./accelerator_v2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -output /misc/scratch/gwl459/augmented-reality-glasses/fpga_software/Accelerators
