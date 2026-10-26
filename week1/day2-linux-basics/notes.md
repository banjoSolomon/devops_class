# Day 2 - Linux Basics for DevOps

## Topics
- Why Linux is essential for DevOps
- Linux file system structure (`/etc`, `/var`, `/home`, `/bin`, `/usr`)
- Essential commands:
  - Navigation: `pwd`, `ls`, `cd`, `tree`
  - File ops: `touch`, `mkdir`, `cp`, `mv`, `rm`
  - Viewing: `cat`, `less`, `head`, `tail`
  - Permissions: `chmod`, `chown`, `ls -la`
  - Searching: `grep`, `find`, `locate`
  - Processes: `ps`, `top`, `htop`, `kill`
  - Networking: `ping`, `curl`, `wget`, `netstat`, `ss`
- Users and groups
- Environment variables (`export`, `.bashrc`, `.bash_profile`)
- Writing basic shell scripts

## Hands-on Lab
```bash
# Create a directory structure for a fake app
mkdir -p myapp/{src,logs,config}
echo "APP_ENV=development" > myapp/config/.env
chmod 600 myapp/config/.env
```

## Practice Script
```bash
#!/bin/bash
# health_check.sh - Basic system health check script
echo "=== System Health Check ==="
echo "Date: $(date)"
echo "Uptime: $(uptime)"
echo "Disk Usage:"
df -h /
echo "Memory:"
free -h
echo "Top 5 Processes:"
ps aux --sort=-%cpu | head -6
```
