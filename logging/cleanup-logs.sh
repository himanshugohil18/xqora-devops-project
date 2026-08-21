#!/bin/bash

ARCHIVE_DIR="logging/application-logs/archive"
RETENTION_DAYS=7

echo "Checking for logs older than $RETENTION_DAYS days..."

find "$ARCHIVE_DIR" -type f -name "*.log" -mtime +$RETENTION_DAYS -print -delete

echo "Log cleanup completed successfully."
