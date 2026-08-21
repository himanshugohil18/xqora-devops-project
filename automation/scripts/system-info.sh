#!/bin/bash

OUTPUT_FILE="environment/environment-info.txt"

echo "========================================" > "$OUTPUT_FILE"
echo "     XQORA SYSTEM ENVIRONMENT INFO" >> "$OUTPUT_FILE"
echo "========================================" >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== CURRENT USER ===" >> "$OUTPUT_FILE"
whoami >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== HOSTNAME ===" >> "$OUTPUT_FILE"
hostname >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== OPERATING SYSTEM ===" >> "$OUTPUT_FILE"
lsb_release -d >> "$OUTPUT_FILE" 2>/dev/null || uname -a >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== CPU ===" >> "$OUTPUT_FILE"
lscpu | grep "Model name" >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== MEMORY ===" >> "$OUTPUT_FILE"
free -h >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== DISK ===" >> "$OUTPUT_FILE"
df -h / >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== IP CONFIGURATION ===" >> "$OUTPUT_FILE"
ip addr >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "Environment information collected successfully."
