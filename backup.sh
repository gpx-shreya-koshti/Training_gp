#!/bin/bash

echo "***My Backup Scrip***"
//echo $1
//echo $2
SOURCE=$1
SOURCE_DIR=$2
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"


if [ -d "$SOURCE" ];then
  echo "Backing up directory: $SOURCE"
  echo "Backup will be saved to: $BACKUPFILE"
  tar -czf "$BACKUP_FILE" -C "$SOURCE".
  echo "Backup completed successfully"
else
  echo "Source input is a directory: $SOURCE"
  exist 1
fi
