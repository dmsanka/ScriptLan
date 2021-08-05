#!/bin/bash
#############################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       GetNumbers.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       02/08/2021
# VERSION       :       1.00
# DESCRITION    :	Use two functions Get the correct number and if it is wrong to Print the error message
##############################################################################################################

#This function prints a given error

printError()

{
        echo -e "\033[31mERROR:\033[0m $1"
}


#This function will get a value between the 2nd and 3rd arguments

getNumber()
{

        read -p "$1: "

            while (( $REPLY < $2 || $REPLY> $3 )); do

                        printError "Input must be between $2 and $3"

                                read -p "$1: "

                                    done
}

echo "this is the start of the script"

getNumber "please type a number between 1 and 10" 1 10

echo -e "\033[36mThank you!\033[0m"

getNumber "please type a number between 50 and 100" 50 100

echo -e "\033[36mThank you!\033[0m"

exit 0
