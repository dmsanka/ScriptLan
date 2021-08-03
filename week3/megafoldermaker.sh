#!/bin/bash

###############################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       megafoldermaker.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       22/07/2021      
# VERSION       :       1.00
# DESCRITION    :       This bash script automatically creating folders after user entered two numbers with script 
####################################################################################################################

# Script should run with two numbers otherwise will exit with ERROR
if (( $#!=2 )); then
	echo "ERROR, Provide two numbers" && exit 1
fi
for ((i = $1; i<=$2; i++))
do
	echo "Creating directory number $i "
	mkdir "week$i"
done

