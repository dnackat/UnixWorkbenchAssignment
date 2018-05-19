#!/usr/bin/env bash
# File: range.sh

function range {
	for i in $(eval echo {0..$1})
	do
   		echo -n "$i "
	done
	echo -e "\n"
}

