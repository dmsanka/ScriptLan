#!/bin/bash
##########################################################################
# UNIT NAME     :       Scrpting Languages
# SCRIPT NAME   :       foldercopier.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       22/07/2021      
# VERSION       :       1.00
# DESCRITION    :       User prompt to select folder to copy to new location
#############################################################################

read -p "type the name of the folder you would like to copy :" folderName
if [ -d "$folderName" ]; then
read -p "type the name of the destination : " newFolderName 
cp -r "$folderName" "$newFolderName"
else
echo "i couldnt find that folder" 
fi
exit 0
