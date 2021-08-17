#!/bin/bash
#############################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       DictionaryAttack.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       11/08/2021
# VERSION       :       1.00
# DESCRITION    :       Bash script to crack password using list of words  
##############################################################################################################

# Creating Folder Name and storing hashed password in text file in side that folder #
#####################################################################################
## ask user to type folder Name
read -p "Type the name of the folder you would like to create: " folderName
## creating requsted folder name
mkdir "$folderName"
# Changing to Newly created Directory
cd $folderName
## ask user to type his secret password
read -sp "Create your secret Password: " pswd
## user password save to plain text file with hashed.
echo $pswd | sha256sum > secret.txt

#for each line in the file

for word in $(cat /home/sdissana/student/scripts/portfolio/week6/wordlist.txt);
    do

    #hash the word

        wordlistHash=$(echo $word | sha256sum )

            echo "Trying $word: $wordlistHash"

        #if the hash is the same as the correct password's hash then we have cracked the password!
#            if [ $wordlistHash = $passwordHash ]; then
            if [ "$wordlistHash" == "$(cat ./secret.txt)" ]; then

                echo "Password has been cracked! It was $word"

                exit 0
            fi
    done
exit 1
