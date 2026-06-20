#!/bin/bash

# Create a timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "=========================================="
echo "SYSTEM REPORT generated on $TIMESTAMP"
echo "=========================================="

echo -e "\n--- DISK SPACE USAGE ---"
df -h /

echo -e "\n--- MEMORY USAGE ---"
free -m

echo -e "\n==========================================
