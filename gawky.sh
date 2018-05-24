#!/bin/bash

# Script name: gawky.sh. Using this to learn awk.

awk -F":" '
BEGIN {
printf "==========================================================\n"
printf "%-8s %-3s %8s %-15s %-15s\n" , "User","UID","GID","Home","Shell"
printf "==========================================================\n" }
NR==1,NR==15{ printf "%-8s %3d %8d %-15s %-15s\n", $1,$3,$4,$6,$7} ' /etc/passwd
