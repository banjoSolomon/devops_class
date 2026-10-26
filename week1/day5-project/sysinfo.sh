#!/bin/bash
# sysinfo.sh - Week 1 Project: System information reporter

echo "============================================"
echo "         SYSTEM INFORMATION REPORT         "
echo "============================================"
echo "Generated: $(date)"
echo ""

echo "--- OS & Kernel ---"
uname -a
cat /etc/os-release 2>/dev/null | grep -E "^(NAME|VERSION)=" || echo "OS info not available"

echo ""
echo "--- CPU ---"
lscpu 2>/dev/null | grep -E "(Model name|CPU\(s\)|Thread)" || cat /proc/cpuinfo | grep "model name" | head -1

echo ""
echo "--- Memory ---"
free -h

echo ""
echo "--- Disk Space ---"
df -h --total 2>/dev/null || df -h

echo ""
echo "--- Network Interfaces ---"
ip addr show 2>/dev/null || ifconfig 2>/dev/null

echo ""
echo "--- Logged-in Users ---"
who

echo ""
echo "============================================"
echo "               END OF REPORT               "
echo "============================================"
