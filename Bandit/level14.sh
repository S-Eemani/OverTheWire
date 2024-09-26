# level 14 --> level 15
# The password for the next level can be retrieved by submitting the password of the current level to port \n
# 30000 on localhost.

#username: bandit14@bandit.labs.overthewire.org
#password: MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS (output from level 13)
echo "MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS" | nc localhost 30000
# echo: send the data(string) as an argument to the next part
# nc: short for Netcat which is a netwokr utility used for reading from and writing to network connections via TCP/UDP

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!