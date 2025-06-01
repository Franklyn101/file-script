#!/bin/bash

# Check if a directory path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Error: please provide exactly one directory path as an argument."
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Store the directory path from the argument
dir_path="$1"

# Check if the directory exists
if [ ! -d "$dir_path" ]; then
    echo "Error: Directory '$dir_path' does not exist."
    exit 1
fi

# Count the number of files (not directories) in the specified path
file_count=$(find "$dir_path" -maxdepth 1 -type f | wc -l)

# Output the result
echo "Number of files in '$dir_path': $file_count"