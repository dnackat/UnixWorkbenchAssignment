#!/usr/bin/env bash
# File: simpleifelse.sh

echo "Start program"

if [[ $1 -eq 10 ]]
then
	echo "You entered $1. Good job!"
elif [[ $1 -lt 10 ]]
then
	echo "Too low! Try a bigger number."
else 
	echo "Too high! Try a smaller number."
fi

echo "End program"
