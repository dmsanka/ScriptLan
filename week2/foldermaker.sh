#!/bin/bash
#######################################################
# UNIT NAME	:	Scrpting Languages
# SCRIPT NAME	:	foldermaker.sh
# AUTHOR	:	Sanka Dissanayake
# DATE		:	22/07/2021	
# VERSION	:	1.00
# DESCRITION	:	User prompt to create new folder
########################################################

read -p "type the name of the folder you would like to create " folderName
mkdir "$folderName"

exit 0

