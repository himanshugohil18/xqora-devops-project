#!/bin/bash

LOG_DIR="logging/application-logs"
LOG_FILE="$LOG_DIR/application.log"
ARCHIVE_DIR="$LOG_DIR/archive"

mkdir -p "$ARCHIVE_DIR"

if [ -f "$LOG_FILE" ]; then
    TIMESTAMP=$(date '+%Y%m%d_%H%M%S')

    mv "$LOG_FILE" "$ARCHIVE_DIR/application_$TIMESTAMP.log"

    touch "$LOG_FILE"

    echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] Log rotation completed" >> "$LOG_FILE"

    echo "Log rotated successfully."
else
    echo "No application log found."
fi
