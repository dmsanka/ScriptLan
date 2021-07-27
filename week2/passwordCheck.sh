#!/bin/bash
##########################################################################################
# UNIT NAME     :       Scrpting Languages
# SCRIPT NAME   :       passwordCheck.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       22/07/2021      
# VERSION       :       1.00
# DESCRITION    :	Verifing user password against hashed password in secret text file.       
###########################################################################################

# ask user to type his secret password
read -sp "Enter your secret Password: "  pswd
# hash enterd password
pswd_hash=`echo "$pswd" | sha256sum`
# verify with stored password
if [ "$pswd_hash" == "$(cat /home/sdissana/student/scripts/portfolio/week2/ScripLanTest/secret.txt)"  ]
then
echo	
  echo "Access Granted"
  exit 0
else
echo	
  echo "Access Denied"
  exit 1
fi

