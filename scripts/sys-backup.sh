#!/bin/bash

# Ensure ripgrep is installed
if ! command -v rg &>/dev/null; then
  echo "Error: 'ripgrep' (rg) is not installed. Please install it first."
  exit 1
fi

# Ensure root privileges
if [[ $EUID -ne 0 ]]; then
  echo "Permission denied. Please run with sudo."
  exit 1
fi

echo "--- Timeshift On-Demand Backup ---"

# Use rg to count occurrences of "Snapshot" in the timeshift list
# -c returns the count of matching lines
BACKUP_EXISTS=$(timeshift --list | rg -c "Snapshot")

if [ -z "$BACKUP_EXISTS" ] || [ "$BACKUP_EXISTS" -eq 0 ]; then
  echo "No prior snapshots found. Creating initial system state..."
else
  echo "Existing snapshots detected ($BACKUP_EXISTS). Starting incremental sync..."
fi

# Create the snapshot
# --tags O marks this as an 'On-demand' backup specifically
timeshift --create --comments "Manual On-Demand Backup"

if [ $? -eq 0 ]; then
  echo "------------------------------------------"
  echo "Done: System state has been captured."
else
  echo "Failed: Timeshift encountered an error."
  exit 1
fi
