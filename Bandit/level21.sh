# level 21 --> level 22
# A program is running automatically at regular intervals from cron, the time-based job scheduler. \n
# Look in /etc/cron.d/ for the configuration and see what command is being executed.

#username: bandit21@bandit.labs.overthewire.org
#password: EeoULMCra2q0dSkYj561DX7s1CpBuOBt (output of level 20)

#cronjob: the time-based job scheduler
# Look in /etc/cron.d/
ls /etc/cron.d/ 
cat /etc/cron.d/cronjob_bandit22 # since we are looking for password of level 22
# we can see cronjob_bandit22.sh, a shell script running.
cat /usr/bin/cronjob_bandit22.sh #printing the code of cronjob_bandit22.sh
# we can see that the output of the shell code is writtent o /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!