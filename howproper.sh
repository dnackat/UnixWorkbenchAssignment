#!/usr/bin/env bash
# File: howproper.sh

export LC_COLLATE=C
if [[ $1 =~ ^[A-Z][a-z].* ]]
then
	echo "How proper!"
else
	echo "No donut for you! :("
fi

echo "End program"
