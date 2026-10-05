#!/bin/bash

LOG_DIR="/home/dharmik/fintech_ops/logs"
LOG_FILE="$LOG_DIR/system_$(date +%Y-%m-%d_%H-%M-%S).log"

mkdir -p "$LOG_DIR"

{
    echo "======================================"
    echo "System Monitoring Report"
    echo "Timestamp: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "======================================"

    echo
    echo "Disk Usage:"
    df -h /

    echo
    echo "Memory Usage:"
    free -h

} >> "$LOG_FILE"

find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec gzip -f {} \;

echo "Log created: $LOG_FILE"
 
