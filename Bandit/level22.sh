# level 22 --> level 23
# A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ \n
# for the configuration and see what command is being executed.
# NOTE: Looking at shell scripts written by other people is a very useful skill. The script for this level is \n
# intentionally made easy to read. If you are having problems understanding what it does, try executing it to see the \n
# debug information it prints.

#username: bandit22@bandit.labs.overthewire.org
#password: c (output of level 21)
ls /etc/cron.d/ 
cat /etc/cron.d/cronjob_bandit23
cat /usr/bin/cronjob_bandit23.sh
echo "I am user bandit23" | md5sum | cut -d ' ' -f 1
cat /tmp/8ca319486bfbbc3663ea0fbe81326349

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!