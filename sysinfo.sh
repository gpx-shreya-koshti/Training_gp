#!/bin/sh

echo "System information"
echo ".................."
echo "Current user: $(whoami)"
echo "Machine name: $(hostname)"
echo "Operating System : $(uname -a)"
echo "CPU Cores : $(lscpu | grep "^Core(s) per socket:" | awk '{print $4}')"
echo "RAM Size: $(free -h | awk '/^Mem:/ {print $2}')"