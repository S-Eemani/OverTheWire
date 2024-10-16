# level 19 --> level 20
# To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without \n
# arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), \n
# after you have used the setuid binary.

#username: bandit18@bandit.labs.overthewire.org
#password: cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8 (output of level 18)

./bandit20-do cat /etc/bandit_pass/bandit20
# ./bandit20-do: executes the bandit20-do script
# cat: displays the content of a file
# /etc/bandit_pass/bandit20: path that stores the password for the next file. You can find this using the id

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!