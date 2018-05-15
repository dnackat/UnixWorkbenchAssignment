#!/usr/bin/env bash

# File: guessinggame.sh

# This script repeatedly prompts user to enter the number of files in the 
# directory until he/she gets it right.

function filesindir {
	# This function outputs the number of files in a folder.
	echo "$(ls -l | grep -v drwx | grep r | wc -l)"
}

# Initialize a boolean variable to indicate completion of loop
correct_guess=false

# Start a while loop to prompt user until the correct guess
while [[ $correct_guess = false ]]
do
	echo "Guess the number of files in this directory: "
	read response
	
	num_files=$(filesindir)
	if [[ $response -eq $num_files ]]
	then
		echo -e "Congratulations! Your guess is correct.\n"
		let correct_guess=true
	elif [[ $response -lt $num_files ]]
	then
		echo "Too low! Try again."
	else
		echo "Too high! Try again."
	fi
done 

