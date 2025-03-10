#!/bin/bash

# Check if a filename was provided
if [ -z "$1" ]; then
    echo "Usage: ./build.sh <filename>"
    exit 1
fi

# Extract filename without extension
FILENAME="${1%.*}"

# Check if file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found!"
    exit 1
fi

# Compile the specified file
g++ -std=c++17 -Wall -Wextra -o "$FILENAME" "$1"

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful! Running..."
    ./"$FILENAME"

# Delete the executable after running
    rm "$FILENAME"

else
    echo "Compilation failed!"
    exit 1
fi
