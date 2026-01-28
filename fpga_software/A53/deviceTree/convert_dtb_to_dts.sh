#!/bin/bash

# Log file
LOG_FILE="dtc_conversion.log"

# Clear log file at start
> "$LOG_FILE"

# Function to log messages
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

# Check if input file is provided
if [ $# -lt 1 ]; then
    log_message "Error: Input DTB file is required"
    log_message "Usage: $0 input.dtb [output.dts]"
    exit 1
fi

# Get input file name
input_file="$1"

# Check if input file exists
if [ ! -f "$input_file" ]; then
    log_message "Error: Input file '$input_file' does not exist"
    exit 1
fi

# Get output file name (use default if not provided)
output_file="${2:-system.dts}"

# Get directory of output file
output_dir=$(dirname "$output_file")

# Check if output directory exists, create if it doesn't
if [ ! -d "$output_dir" ] && [ "$output_dir" != "." ]; then
    log_message "Creating output directory: $output_dir"
    mkdir -p "$output_dir" 2> >(tee -a "$LOG_FILE" >&2)
    if [ $? -ne 0 ]; then
        log_message "Error: Failed to create output directory"
        exit 1
    fi
fi

# Run the dtc command
log_message "Converting $input_file to $output_file"
dtc -I dtb -O dts -o "$output_file" "$input_file" 2> >(tee -a "$LOG_FILE" >&2)

# Check if conversion was successful
if [ $? -eq 0 ]; then
    log_message "Conversion completed successfully"
    log_message "Output file created: $output_file"
else
    log_message "Error: Conversion failed"
    exit 1
fi
