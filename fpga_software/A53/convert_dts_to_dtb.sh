

# Get input file name
input_file="$1"

dtc -I dtb -O dts -o "$input_file" system.dtb