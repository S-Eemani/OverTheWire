# level 17 --> level 18
# There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in \n
# passwords.new and is the only line that has been changed between passwords.old and passwords.new

#username: bandit16@bandit.labs.overthewire.org
#password: EReVavePLFHtFlFsjn3hyzMlvSuSAcRD (output of level 16)
diff passwords.new passwords.old 
# <: prsent in passwords.new only
# >: present in passwords.old only

# copy the string after < symbol.

#when you try to login it exits saying "Bye-Bye". That is expected. It is the task for the next level

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!