#!/bin/bash
echo "Starting the DevOps System Check Tool..."
# Create a timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "=========================================="
echo "SYSTEM REPORT generated on $TIMESTAMP"
echo "=========================================="

echo -e "\n--- DISK SPACE USAGE ---"
df -h /

echo -e "\n--- MEMORY USAGE ---"
free -m

echo -e "\n=========================================="
echo "Checking Database Status..."
# Simulate checking if a database service (like PostgreSQL) is active
if systemctl is-active --quiet postgresql; then
    echo "▶ Database: ONLINE"
else
    echo "▶ Database: OFFLINE (or not installed)"
fi