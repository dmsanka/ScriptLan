#!/bin/bash 
##########################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       filenames.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       26/07/2021      
# VERSION       :       1.00
# DESCRITION    :	Read the content of txt to identify files,directories & other           
###########################################################################################

FILE=$1
cat $FILE | while read LINE;
do
	if [[ -f $LINE ]]; 
		then 
		echo "$LINE - That file exists";
	elif [[ -d $LINE ]];
		then
		echo "$LINE - That a directory";
	else
		echo "$LINE - I don't know what that is!"
	fi
done

exit 0
