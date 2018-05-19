#!/usr/bin/env bash
# File: whileloop.sh

echo "Enter a number to count down from: "
read count

while [[ $count -gt 0 ]]
do
	echo "count is equal to $count"
	let count=$count-1
done
