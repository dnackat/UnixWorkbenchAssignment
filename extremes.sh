#!/usr/bin/env bash
# File: extremes.sh

function extremes {
	local min=$1
	local max=$1

	for i in $@
	do
		if [[ $i -lt $min ]]
		then
			let min=$i
		fi

		if [[ $i -gt $max ]]
		then
			let max=$i
		fi
	done
	
	echo "min: $min, max: $max."
}

 
