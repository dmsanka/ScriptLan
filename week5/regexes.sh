#!/bin/bash 
##################################################################################################
# UNIT NAME     :       Scrpting Languages
# SCRIPT NAME   :       Regexes.sh
# AUTHOR        :       Sanka Dissanayake
# DATE          :       02/08/2021      
# VERSION       :       1.00
# DESCRITION    :	grep -r statements for search patterns       
####################################################################################################

echo -e "\033[35mAll sed Statements(patterns):\033[0m \n"
grep -r "sed.*$"
echo -e "\n"
echo -e "\033[35mAll lines starts with m:\033[0m \n"
grep -r "^m.*$"
echo -e "\n"
echo -e "\033[35mAll lines containing three digit numbers:\033[0m \n"
grep -r ".*[0-9]{3}.*$"
echo -e "\n"
echo -e "\033[35mAll echo statements with atleast three words:\033[0m \n"
grep -r "echo .*\w*\s\w*\s\w*\s.*$"
echo -e "\n"
echo -e "\033[35mAll lines that would make a good password:\033[0m \n"
grep -r "(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,})"


