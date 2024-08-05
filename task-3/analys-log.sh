#!/bin/bash

# Input and output files
input_file="fp-sre-challenge.log"
output_file="output.log"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file not found!"
    exit 1
fi

# Extract relevant fields and write to temporary file
awk '{print $1 " " $2 " " $3 " " $4 " " $5 " " $6 " " $7" " $8" " $9" " $10}' "$input_file" > "$output_file"


echo "Summary of requests has been written to $output_file"
