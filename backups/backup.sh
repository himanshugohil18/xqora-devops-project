#!/bin/bash

SOURCE_DIR="backups/source-data"
BACKUP_DIR="backups/archive"

TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
BACKUP_FILE="$BACKUP_DIR/xqora_backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory not found."
    exit 1
fi

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
    echo "Backup file: $BACKUP_FILE"
else
    echo "Backup failed."
    exit 1
fi
