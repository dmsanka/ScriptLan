#!/bin/bash
################################################################################################################
# UNIT NAME     :       Scrpting Languages
# SCRIPT NAME   :       menu.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       22/07/2021      
# VERSION       :       1.00
# DESCRITION    :       User able to access menu option and perfom activities if user corectly enter there password
####################################################################################################################


# ask user to type folder Name
read -p "Type the name of the folder you would like to create: " folderName
# creating requsted folder name
mkdir "$folderName"
# ask user to type his secret password
read -sp "Create your secret Password: "  pswd
# user password save to plain text file with hashed.
echo $pswd | sha256sum > secret.txt
# move secret.txt file to requied folder.
mv secret.txt ./$folderName/

# ask user to type his secret password
echo
read -sp "Enter your secret Password to Access Menu Option: "  pswd
# hash enterd password
pswd_hash=`echo "$pswd" | sha256sum`
echo "$(cat ./$folderName/secret.txt)"
if [ "$pswd_hash" == "$(cat ./$folderName/secret.txt)"  ]
then
  echo "Access Granted"

while [ 1 ]
do
	clear
	echo " Select an option
	1) Ceeate a folder
	2) Copy a folder
	3) Set a password
	4) Exit from Menu"

read options
case $options in 
	1) 
		./foldermaker.sh
		;;

	2) 
		./foldercopier.sh

		;;
	3) 
		./setPassword.sh
		;;
	4)
		echo "Goodbye"
		exit
		;;

	esac
done
exit 0

else
  echo "Access Denied"
  echo "Goodbye"
  exit 1
fi



