# level 20 --> level 21
# There is a setuid binary in the homedirectory that does the following: it makes a connection to localhost on the \n
# port you specify as a commandline argument. It then reads a line of text from the connection and compares it to the \n 
# password in the previous level (bandit20). If the password is correct, it will transmit the password for the next \n
# level (bandit21).

#username: bandit20@bandit.labs.overthewire.org
#password: 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO (output of level 19)

# it is mentioned that the connection to localhost on the port we specify and reads a line from the connection and 
# comapres it to the password 
echo "0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO" | netcat -lp 1234 &
./suconnect 1234

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!