# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/ecelrc/students/gwl459/workspace/augmented-reality-glasses/fpga_software/R5/ultra96_base/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/ecelrc/students/gwl459/workspace/augmented-reality-glasses/fpga_software/R5/ultra96_base/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ultra96_base}\
-hw {/misc/scratch/gwl459/ultra96v2_oob_wrapper.xsa}\
-proc {psu_cortexr5_0} -os {standalone} -fsbl-target {psu_cortexr5_0} -out {/home/ecelrc/students/gwl459/workspace/augmented-reality-glasses/fpga_software/R5}

platform write
platform generate -domains 
platform active {ultra96_base}
platform generate
platform active {ultra96_base}
platform generate
platform active {ultra96_base}
