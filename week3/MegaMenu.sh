#!/bin/bash
################################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       MegaMenu.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       27/07/2021
# VERSION       :       3.00
# DESCRITION    :       User able to access menu option and preform activities if user correctly enter their password
# CHANGERS      :       by Sanka D on 27/07/2021
#                       Change the name of the script
#                       Add more options to Menu
#                       Script improved with colours & more options
#       	:       By Sanka D 0n 17/08/2021
# BUG FIXED             Add Line 51 to change the directory back to Week3 
####################################################################################################################

#####################################################################################
# Creating Folder Name and storing hashed password in text file in side that folder #
#####################################################################################
## ask user to type folder Name
read -p "Type the name of the folder you would like to create: " folderName
## creating requsted folder name
mkdir "$folderName"
# Changing to Newly created Directory
cd $folderName
## ask user to type his secret password
read -sp "Create your secret Password: "  pswd
## user password save to plain text file with hashed.
echo $pswd | sha256sum > secret.txt
## move secret.txt file to requied folder. You dont have to move this file if you change the directory(cd) just after it created
#mv secret.txt ./$folderName/

#####################################################################################
# Verify stored password and Entered password to Grant Access                        #
#####################################################################################

# ask user to type his secret password
echo
read -sp $'\e[31mEnter your secret Password to Access Menu Option:\e[0m'  pswd
echo
# hash enterd password
pswd_hash=`echo "$pswd" | sha256sum`
#echo "$(cat ./$folderName/secret.txt)"
#if [ "$pswd_hash" == "$(cat ./$folderName/secret.txt)"  ]

#Verify entred hashed password and stored hashed passowrd
if [ "$pswd_hash" == "$(cat ./secret.txt)"  ]
then
	echo -e "\033[36mAccess Granted\033[0m"
#change directory to Week3 
cd ~/student/scripts/portfolio/week3/ 
#####################################################################################
# Creating Colourful Option Menu to Access selected options until EXIT             #
#####################################################################################

while [ 1 ]
do
        #clear - comment this clear command to display the output
# allocating colours to Mega Menu options
        echo -e "\e[0;34m Select an option \e[0m"
    echo -e "\e[0;36m1) Create a folder \e[0m"
    echo -e "\e[0;36m2) Copy a folder \e[0m"
    echo -e "\e[0;36m3) Set a password \e[0m"
    echo -e "\e[0;36m4) Calculator \e[0m"
    echo -e "\e[0;36m5) Create Week Folder \e[0m"
    echo -e "\e[0;36m6) Check Filenames \e[0m"
    echo -e "\e[0;36m7) Download a File \e[0m"
    echo -e "\e[0;37m8) Exit from Menu \e[0m"


#####################################################################################
# Read selected Options and call options accordingly until select EXIT              #
#####################################################################################

read options
case $options in
# call selected options from different locations
        1)
                /home/sdissana/student/scripts/portfolio/week2/foldermaker.sh
                ;;

        2)
                /home/sdissana/student/scripts/portfolio/week2/foldercopier.sh

                ;;
        3)
                /home/sdissana/student/scripts/portfolio/week2/setPassword.sh
                ;;
	4)
                ./calculator.sh
                ;;
        5)
                ./megafoldermaker.sh
                ;;
    	6)
                ./filenames.sh filenames.txt
                ;;
    	7)
                ./Internetdownloader.sh
                ;;
    	8)
                echo "Goodbye"
                exit
                ;;

        esac
done
exit 0
#####################################################################################
# If password verification failed, terminate the shell script with Access Denied    #
#####################################################################################
else
  echo "Access Denied"
  echo "Goodbye"
  exit 1
fi
