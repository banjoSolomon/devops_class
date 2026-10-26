#!/bin/bash
# health_check.sh - Basic system health check script
# Week 1 - Day 2 Practice

echo "=== System Health Check ==="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo ""

echo "--- Uptime ---"
uptime

echo ""
echo "--- Disk Usage ---"
df -h /

echo ""
echo "--- Memory Usage ---"
free -h

echo ""
echo "--- Top 5 CPU Processes ---"
ps aux --sort=-%cpu | head -6

echo ""
echo "=== Done ==="
