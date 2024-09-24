# level 13 --> level 14
# The password for the next level is stored in /etc/bandit_pass/bandit14 and can only be read by user bandit14. \n
# For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the \n
# next level. Note: localhost is a hostname that refers to the machine you are working on

#username: bandit13@bandit.labs.overthewire.org
#password: FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

# Given that password is stored in /etc/bandit_pass/bandit14 and can only be read by user14. 
# we have to SSH into bandit14 to be able to read the password with out permission error
ssh -i sshkey.private -p 2220 bandit14@localhost #-i specifies the private key on port 2220 user@hostname
# once in
cat /etc/bandit_pass/bandit14

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!