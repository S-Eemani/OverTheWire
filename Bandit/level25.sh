# level 25 --> level 26
# Logging in to bandit26 from bandit25 should be fairly easy… The shell for user bandit26 is not /bin/bash, but 
# something else. Find out what it is, how it works and how to break out of it.
#nNOTE: if you’re a Windows user and typically use Powershell to ssh into bandit: Powershell is known to cause 
# issues with the intended solution to this level. You should use command prompt instead.

#username: bandit25@bandit.labs.overthewire.org
#password: iCi86ttT4KSNe1armKiwbQNmB3YJP3q4 (output of level 24)
ls
cat /etc/passwd | grep bandit26
cat /usr/bin/showtext 


# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!