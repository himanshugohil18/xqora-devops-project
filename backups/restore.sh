#!/bin/bash

BACKUP_DIR="backups/archive"
RESTORE_DIR="backups/restored-data"

LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/*.tar.gz 2>/dev/null | head -n 1)

if [ -z "$LATEST_BACKUP" ]; then
    echo "Error: No backup file found."
    exit 1
fi

rm -rf "$RESTORE_DIR"
mkdir -p "$RESTORE_DIR"

tar -xzf "$LATEST_BACKUP" -C "$RESTORE_DIR"

if [ $? -eq 0 ]; then
    echo "Restore completed successfully."
    echo "Restored from: $LATEST_BACKUP"
    echo "Restore location: $RESTORE_DIR"
else
    echo "Restore failed."
    exit 1
fi
