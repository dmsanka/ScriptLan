#!/bin/bash 
###########################################################################################################
# UNIT NAME     :       Scrpting Languages
# SCRIPT NAME   :       Awkformat.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       02/08/2021      
# VERSION       :       1.00
# DESCRITION    :       Used saved set of Structured data in a text file to creat user friendly report using 
#			Advanced awk features and Colour codes 
#############################################################################################################

#echo "Google Server IPs:"

#awk '{
#	print $1
#}' input.txt

#exit 0


echo "Google Server IPs:"

awk 'BEGIN {

    FS=":";

    	print "________________________________";
    	print "| \033[34mServer Type\033[0m | \033[34mIP\033[0m             |";
	print "________________________________";
}

{

    	printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);

}

END {
    	print("________________________________");

}' input.txt
