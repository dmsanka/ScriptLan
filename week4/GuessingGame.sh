#!/bin/bash
##################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       GuessingGame.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       26/07/2021
# VERSION       :       1.00
# DESCRITION    :       Use getnumber function to create Guessing game with printError function
####################################################################################################

#This function prints a given error

printError()
{
        echo -e "\033[31mERROR:\033[0m $1"
}


#This function will get a value between the 2nd and 3rd arguments

getNumber()
{
# Assinging target number
    read -p "$1:"
        while (( $REPLY < 42 || $REPLY > 42 )); do
        if (( $REPLY < $2 || $REPLY > $3 )); then
             printError "Input must be between $2 and $3"
# Verify the guessed number & Print "Too Low" if it is lower than the correct number
    read -p "$1 : "
        elif (( $REPLY < 42 )); then
            echo -e "\033[36mToo Low!\033[0m"
# Verify the guessed number & Print "Too High" if it is Higher than the correct number

    read -p "$1 : "
        elif (( $REPLY > 42 )); then
            echo -e "\033[35mToo High!\033[0m"
            read -p "$1 : "
fi
        done
     echo -e "\033[32mCorrect!\033[0m"
}

echo "This is the start of the Guessing Game"
    getNumber "Please Guess a number between 1 and 100 " 1 100

    echo "Thank you!"

exit 0
