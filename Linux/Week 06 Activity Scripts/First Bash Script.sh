#!/bin/bash

echo "System Audit Script"
date
echo ""
echo "Machine Type:"
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n"
echo "Hostname: $(hostname -s) "
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo -e "CPU Info:"
lscpu | grep CPU
echo -e "Disk Usage:"
df -H | head -2
echo -e "Log in as: \n $(who) \n"
