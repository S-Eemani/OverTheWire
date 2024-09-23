# level 9 --> level 10
# The password for the next level is stored in the file data.txt in one of the few human-readable strings, \n
# preceded by several ‘=’ characters.

#username: bandit9@bandit.labs.overthewire.org
#password: 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
strings data.txt | grep "="
# strings: extracts onle string from the data.txt file and pass the argument to grep which will filter for "=" characters.

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!
