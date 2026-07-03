#!/bin/bash

echo "==============================================="
echo " InsightForge Infrastructure Health Report"
echo "==============================================="

echo "Date: $(date)"
echo

echo "Hostname:"
hostnamectl --static

echo
echo "OS:"
grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"'

echo
echo "Kernel:"
uname -r

echo
echo "Uptime:"
uptime -p

echo
echo "IPv4:"
hostname -I

echo
echo "Routing:"
ip route | head -2

echo
echo "Memory:"
free -h

echo
echo "Disk:"
df -h /

echo
echo "Docker Containers:"
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

echo
echo "Docker Disk Usage:"
docker system df

echo
echo "Tailscale:"
tailscale status | head -10

echo
echo "Services:"
for svc in docker tailscaled ssh
do
    printf "%-12s : " "$svc"
    systemctl is-active "$svc"
done

echo
echo "Finished."
