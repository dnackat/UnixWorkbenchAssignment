#!/usr/bin/env bash
# File: condexif.sh

echo "Start program"

if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]
then
	echo "$1 is between 3 and 7"
elif [[ $1 =~ "Dileep" ]] || [[ $1 =~ "Manu" ]] || [[ $1 =~ "Amta" ]]
then
	echo "This person is cool!"
else 
	echo "You entered $@, not what I was looking for."
fi

echo "End program"
