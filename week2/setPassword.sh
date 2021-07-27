#!/bin/bash
##################################################################################
# UNIT NAME     :       Scrpting Languages
# SCRIPT NAME   :       setPassword.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       22/07/2021      
# VERSION       :       1.00
# DESCRITION    :       create new folder and text file with the hashed password
#			Text file move to new folder	
##################################################################################

# ask user to type folder Name
read -p "type the name of the folder you would like to create: " folderName
# creating requsted folder name
mkdir "$folderName"
# ask user to type his secret password
read -sp "Enter your secret Password: "  pswd
echo
# user password save to plain text file with hashed.
echo $pswd | sha256sum > secret.txt
# move secret.txt file to requied folder.
mv secret.txt ./$folderName/

exit 0


