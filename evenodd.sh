#!/usr/bin/env bash
# File: evenodd.sh

echo "Enter a positive number: "
read number
rem=$(expr $number % 2)
if [[ $rem -eq 0 ]]
then
	echo "Even"
else
	echo "odd"
fi 
