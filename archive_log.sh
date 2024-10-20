#!/bin/bash

# Assigning input arguments to variables
SOURCE_FILE="heart_rate_log.txt"

# Check if the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file '$SOURCE_FILE' does not exist."
    exit 1
fi

# Get the current timestamp in the required format
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create the new file name with timestamp
NEW_FILENAME="${SOURCE_FILE%.txt}_$TIMESTAMP.txt"

# Move and rename the file
mv "$SOURCE_FILE" "$NEW_FILENAME"

# Check if the move was successful
if [ $? -eq 0 ]; then
    echo "File moved and renamed to: $NEW_FILENAME"
else
    echo "Error moving file."
    exit 1
fi
