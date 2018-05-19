#!/usr/bin/env bash
# File: twoargs.sh

if [[ $1 =~ [0-9] && $2 =~ [0-9] ]]
then
	sum=$(expr $1 + $2)
	echo "Sum is $sum."
else
	echo "You entered $1 and $2."
fi

echo "End program"
