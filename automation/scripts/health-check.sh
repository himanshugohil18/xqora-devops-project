#!/bin/bash

echo "========================================"
echo "       XQORA SERVER HEALTH CHECK"
echo "========================================"

echo ""
echo "=== SYSTEM UPTIME ==="
uptime

echo ""
echo "=== MEMORY USAGE ==="
free -h

echo ""
echo "=== DISK USAGE ==="
df -h /

echo ""
echo "=== TOP CPU PROCESSES ==="
ps aux --sort=-%cpu | head -n 6

echo ""
echo "=== TOP MEMORY PROCESSES ==="
ps aux --sort=-%mem | head -n 6

echo ""
echo "=== DOCKER STATUS ==="
docker ps --format "table {{.Names}}\t{{.Status}}"

echo ""
echo "Health check completed successfully."
