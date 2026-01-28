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
    log_message "Error: Input DTS file is required"
    log_message "Usage: $0 input.dts [output.dtb]"
    exit 1
fi

# Get input and output file name
input_file="$1"
output_file="$2"

dtc -I dts -O dtb -o "$output_file" "$input_file"