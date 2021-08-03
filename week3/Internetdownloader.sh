#!/bin/bash -x
###################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       Internetdownloader.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       26/07/2021      
# VERSION       :       1.00
# DESCRITION    :       Download index.html from user selected URL and move to user selected FOLDER
####################################################################################################

# Verify internet connection availability
wget -q --spider http://google.com 

	if [ $? -eq 0 ]; then
		echo "Internet Available"
	else 
		echo "Internet NOT Available please try again later"
	fi
# Prompt user to enter URL or Exit
	read -p "Please type a website URL to download or type to exit to quit  : " url
# 
	while [ $url != "exit" ]; 
	
	do
# Prompt user to create folder to save downloaded file
		read -p "Please type the location of where you would like to download the file to : " foldername
		mkdir "$foldername"
# Change to Newly created Folder 
		cd $foldername 
# Downlod selected URL 
		wget -T 20 -c $url && read -p "Please type a website URL to download or type to exit to quit  : " url
# Change back to Week3 folder 
		cd /home/sdissana/student/scripts/portfolio/week3  
	done
exit 0
