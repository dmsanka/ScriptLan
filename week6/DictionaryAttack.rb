#!/usr/bin/ruby
#############################################################################################################
# UNIT NAME     :       Scripting Languages
# SCRIPT NAME   :       DictionaryAttack.rb
# AUTHOR        :       Sanka Dissanayake
# DATE          :       11/08/2021
# VERSION       :       1.00
# DESCRITION    :       Ruby script to crack password using list of words  
##############################################################################################################

require 'digest'

#read the password hash

passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5"

#open the wordlist and repeat for each word

IO.foreach("wordlist.txt") do | word |

    word.chomp!

    #hash the word

    wordlistHash = Digest::SHA256.hexdigest(word)

    puts("Trying password #{word}: #{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!

    if(wordlistHash == passwordHash)

        puts("Password has been cracked! It was #{word}")

        return

    end

end

