#!/usr/bin/env bash
# File: funcs.sh

function plier {
	local prod=1
	for number in $@
	do
		let prod*=$number
	done

	echo "$prod"
}

function isiteven {
	local rem=$(expr $1 % 2)
	if [[ $rem -eq 0 ]]
	then
		echo "1"
	else
		echo "0"
	fi
}

function nevens {
	local count=0
	for i in $@
	do
		let count+=$(isiteven $i)
	done

	echo "$count"
}

function howodd {
	local oddcount=$(expr $# - $(nevens $@))
	local percentodd=$(echo "($oddcount / $#) * 100" | bc -l)

	echo "$percentodd%"
}

function fib {
	local first=0
	local second=1
	local current=0
	for (( i=0; i<$1; i++ ))
	do
		if [[ $i -eq 0 ]]
		then
			echo -n "0 "
		elif [[ $i -eq 1 ]]
		then
			echo -n "1 "
		else
			let current=first+second
			echo -n "$current "
			let first=second
			let second=current
		fi
	done
	echo -e "\n"
}

