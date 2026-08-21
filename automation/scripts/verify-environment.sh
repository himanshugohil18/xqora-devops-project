#!/bin/bash

echo "=================================="
echo " XQORA DevOps Environment Check"
echo "=================================="
echo ""

echo "Date and Time:"
date

echo ""
echo "Current User:"
whoami

echo ""
echo "Operating System:"
lsb_release -a

echo ""
echo "Docker Version:"
docker --version

echo ""
echo "Docker Compose Version:"
docker compose version

echo ""
echo "Git Version:"
git --version

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "=================================="
echo " Environment Verification Complete"
echo "=================================="
