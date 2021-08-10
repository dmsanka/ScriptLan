#!/bin/bash
#####################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       UserAccounts.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       02/08/2021
# VERSION       :       1.00
# DESCRITION    :	Used etc/passwd file to create well formated user friendly User account table 
#			using Advanced awk features and Colour codes 
######################################################################################################

echo "User Accounts:"

awk 'BEGIN {
        FS=":";


                print "_____________________________________________________________________________________________";
                printf "%s\n", "| \033[34mUserName\033[0m             | \033[34mUserID\033[0m |\033[34mGroupID\033[0m  | \033[34mHome\033[0m                      |  \033[34mShell\033[0m               | "
                printf "%s\n", "|______________________|________|_________|___________________________|______________________|"
}

{
               printf("| \033[33m%-20s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-25s\033[0m | \033[35m%-20s\033[0m |\n", $1, $3, $4, $6, $7);
              }
END {
                print("|____________________________________________________________________________________________|");


}' /etc/passwd
