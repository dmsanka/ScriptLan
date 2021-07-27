#!/bin/bash

#################################################################
# UNIT NAME     :       Scrpting Languages
# SCRIPT NAME   :       error.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       22/07/2021      
# VERSION       :       1.00
# DESCRITION    :       User need secret word to access secret menu
###################################################################


read -s -p "what's the secret code?"
echo
secret="shhh" #Don't tell anyone!

#secret='shhh' #Don't tell anyone!
#if the user types in the correct secret, tell them they got it right!

if [[ "$secret" = $REPLY ]]; then
    echo "You got it right!"
    correct=true

while [ 1 ]
do
        clear
        echo " Select an option
        1) Ceeate a folder
        2) Copy a folder
        3) Set a password
        4) Exit from Menu"

read options
case $options in
        1)
                ./foldermaker.sh
                ;;

        2)
                ./foldercopier.sh

                ;;
        3)
                ./setPassword.sh
                ;;
        4)
                echo "Goodbye"
                exit
                ;;

        esac
done

else     echo "You got it wrong :"
    correct=false
fi
#read -s -p "what's the secret code?"
#echo
case $correct in
false)
    echo "Go Away!" #people who get it wrong need to be told to go away!
    ;;
true)
    echo "you have unlocked the secret menu!"
    ;;
esac

exit 0

