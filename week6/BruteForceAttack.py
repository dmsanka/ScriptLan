#!/usr/bin/python3

#############################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       BruteForceAttack.py
# AUTHOR        :       Sanka Dissanayake
# DATE          :       11/08/2021
# VERSION       :       1.00
# DESCRITION    :       Python script to crack password using Brute Force Attack  
##############################################################################################################

import hashlib
import string
import itertools
from itertools import combinations
# Adding counter to verify number of passwords
counter = 0


#Hidden password in hash

passwordHash = "6860bc89219d80f8140feeb4fc3fde2de4afc5e78156fbd529834c7ebdb62374"
#passwordHash = "4edc8d198d3bd94159a2bde2473a42799d8eaee56af116ef63ade9b6c030fd6f"

#repeat for each word

chars = string.ascii_letters + string.digits # "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

for word in map(''.join,combinations(chars, 3)):

    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

    print(f"Trying password {word}:{wordlistHash}")


    counter += 1
#Comparing Given Hashed password vs Generated password    
    if(wordlistHash == passwordHash):
       
        print(f"Password has been cracked! It was {word} & It was {counter}th TRY" )

        break
