#!/bin/bash

echo "Enter device name (e.g., Monitor_A):"
read device_name

# Add this line to indicate that logging has started
echo "Starting heart rate logging for device: $device_name"

while true; do
    heart_rate=$((50 + RANDOM % 51))  # Random heart rate between 50 and 100
    echo "$(date '+%Y-%m-%d %H:%M:%S') $device_name $heart_rate" >> heart_rate_log.txt
    sleep 1  # Log every second
done
