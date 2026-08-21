#!/bin/bash

LOG_DIR="logging/application-logs"
LOG_FILE="$LOG_DIR/application.log"

mkdir -p "$LOG_DIR"

echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Application started successfully" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Database connection established" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S') [WARNING] High memory usage detected" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] Failed login attempt detected" >> "$LOG_FILE"

echo "Application logs generated successfully."
