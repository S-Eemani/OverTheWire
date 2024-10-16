# level 18 --> level 19
# The password for the next level is stored in a file readme in the homedirectory. Unfortunately, someone has \n
# modified .bashrc to log you out when you log in with SSH.

#username: bandit18@bandit.labs.overthewire.org
#password: x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO (output of level 17)

# We already know that the password is in readme.md file.
ssh bandit18@bandit.labs.overthewire.org -p 2220 "cat ~/readme" #enter the password.

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!