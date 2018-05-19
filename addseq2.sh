#!/usr/bin/env bash
# File: addseq2.sh

function addseq2 {
	local sum=0
	for number in $@
	do
		let sum+=$number
	done
	
	echo "$sum"
}
