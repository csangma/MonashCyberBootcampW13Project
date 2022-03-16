#!/bin/bash

mkdir ~/research 2> /dev/null

echo "System Audit" > ~/research/sys_info.txt
date >> ~/research/sys_info.txt
echo "" >> ~/research/sys_info.txt
echo "Machine:" >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt
echo -e "User name info: $(uname -a) \n" >> ~/research/sys_info.txt
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> ~/research/sys_info.txt
echo -e "Hostname: $(hostname -s) \n" >> ~/research/sys_info.txt
echo "DNS Servers: " >> ~/research/sys_info.txt
cat /etc/resolv.conf >> ~/research/sys_info.txt
echo -e "Memory Info:" >> ~/research/sys_info.txt
free >> ~/research/sys_info.txt
echo -e "CPU Info:" >> ~/research/sys_info.txt
lscpu | grep CPU >> ~/research/sys_info.txt
echo -e "Disk Usage:" >> ~/research/sys_info.txt
df -H | head -2 >> ~/research/sys_info.txt
echo -e "Logs: \n $(who -a) \n" >> ~/research/sys_info.txt
echo -e "SUID Files:" >> ~/research/sys_info.txt
find / -type f -perm /4000 >> ~/research/sys_info.txt
echo -e "Top 10 Processes" >> ~/research/sys_info.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research/sys_info.txt
