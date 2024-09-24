# level 11 --> level 12
# The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) \n
# letters have been rotated by 13 positions

#username: bandit11@bandit.labs.overthewire.org
#password: dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

cat data.txt | tr 'a-z' 'n-za-m' | tr 'A-Z' 'N-ZA-M'
# tr: short for translate performs a ceaser cipher shift on the letters
# tr 'a-z': specifies the letters to be considered for cipher. We are considering all the alphabets
# 'n-za-m': specifies the replacement characters. This is shift of 13 letters as n comes in between(14th alphabet). 

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!