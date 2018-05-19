#!/usr/bin/env bash
# File: friday.sh

date=$(echo date)

if [[ $date =~ ^[Fri] || $date =~ ^[FRI] ]]
then
	echo "Thank Moses it's Friday!"
else
	echo "Waiting for Friday..."
fi
