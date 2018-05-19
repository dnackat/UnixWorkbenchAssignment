#!/usr/bin/env bash
# File: addseq.sh

function addseq {
	sum=0
	for number in $@
	do
		let sum+=$number
	done
	
	echo "$sum"
}
