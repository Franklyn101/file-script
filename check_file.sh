#!/bin/bash

# check if a filename is provided as an argument
if [ $# -ne 1 ]; then
echo "Error: please provide exactly one filename as an argument."
echo "Usage: $0 <filename>"
exit 1
fi

# Store the filename from the argument
filename="$1"

# Check if the file exists
if [ -f "$filename" ]; then
    echo "File '$filename' exists."
else
    echo "File '$filename' does not exist."
    fi