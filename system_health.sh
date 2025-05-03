#!/bin/bash

echo "System Health Report - $(date)"
echo "----------------------------------"
echo "Uptime:"
uptime

echo -e "\nMemory Usage:"
free -h

echo -e "\nDisk Usage:"
df -h

echo -e "\nTop 5 Running Processes by Memory:"
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6

