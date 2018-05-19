#!/usr/bin/env bash

#File: pushtoserver.sh

function pushtocloud() {
	`scp $1 $2@$3:$4`
}

prompt_user=true

while [[ $prompt_user = true ]]
do
	echo "Enter path of file you want to upload: "
	read filepath
	echo "Enter your username: "
	read username
	echo "Enter the IP address of the server: "
	read ip_addr
	echo "Enter desired file path on server: "
	read serverfilepath
	
	$(pushtocloud $filepath $username $ip_addr $serverfilepath)

	echo -e "\nUpload complete.\n"

	echo "Do you want to upload another file? (yes/no)"
	read response
	
	if [[ $response = "no" ]]
	then
		let prompt_user=false
	fi
done
