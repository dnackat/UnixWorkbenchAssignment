#!/usr/bin/env bash
# File: moreloops.sh

for i in {1..8}
do
   for j in {a..c}
   do
	if [[ $i -lt 3 || $i -gt 6 ]]
	then
		echo "$i$j"
	fi
   done
done
