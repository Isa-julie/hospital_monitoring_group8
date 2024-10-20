#!/bin/bash

# Set the source directory containing archived log files
SOURCE_DIR="./"  # Adjust this if your logs are in a different directory
DESTINATION_DIR="./archived_logs_group8"

# Create the destination directory if it doesn't exist
mkdir -p "$DESTINATION_DIR"

# Move all archived log files (assuming they have a timestamped name)
mv ${SOURCE_DIR}*log_*.txt "$DESTINATION_DIR"

# Check if the move was successful
if [ $? -eq 0 ]; then
    echo "Archived log files moved to $DESTINATION_DIR."
else
    echo "Error moving archived log files."
    exit 1
fi

scp -r archived_logs_group8/ 37cc077ef48a@37cc077ef48a.51efc529.alu-cod.online:/home/
