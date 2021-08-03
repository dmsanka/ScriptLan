#!/bin/bash
##################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       calculator.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       26/07/2021      
# VERSION       :       1.00
# DESCRITION    :       Prompt user to enter two numbers & then perform selected option
####################################################################################################

# Prompt user to enter numbers
read -p "Enter First Number : " n1
read -p "Enter First Number : " n2

# Creating a option Menu
echo "Select Your option 
	1. Addition
	2. Subtraction
	3. Multiplication
	4. Division"
read option
# Get the answers with selected clours 
case $option in
	1)res=`echo $n1 + $n2  | bc`
		echo -e "\033[34m$res\033[0m"
		;;
	2)res=`echo $n1 - $n2 | bc`
		echo -e "\033[32m$res\033[0m"
		;;
	3)res=`echo $n1 \* $n2 | bc`
		echo -e "\033[31m$res\033[0m"
		;;
# used scale to get decimal values 
	4)res=`echo "scale=2; $n1 / $n2" | bc`
		echo -e "\033[35m$res\033[0m"
		;;
	esac

exit 0


