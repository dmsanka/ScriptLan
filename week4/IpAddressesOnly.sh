#!/bin/bash 
##########################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       IpAddressesOnly.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       02/08/2021
# VERSION       :       1.00
# DESCRITION    :       Call IpInfo.sh Script and use "sed" program to remove other Lines except
#                       IP Address
###########################################################################################

# Call IpInfo.sh script to execute

SCRIPT_PATH="/home/sdissana/student/scripts/portfolio/week4/IpInfo.sh"

# Pipe result into sed program to format as requested
# /^\W* command used check the white spaces infornt of the wordings "IP Address..."

"$SCRIPT_PATH" | sed -n '/^\W*IP Address: / {

	p
}'


exit 0
