# level 16 --> level 17
# The credentials for the next level can be retrieved by submitting the password of the current level to a port on \n
# localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then \n
# find out which of those speak SSL/TLS and which don’t. There is only 1 server that will give the next credentials, \n
# the others will simply send back to you whatever you send to it.

#username: bandit16@bandit.labs.overthewire.org
#password: kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx (output of level 15)
nmap localhost -p 31000-32000 -A
echo "kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx" | openssl s_client -connect localhost:31790 -ign_eof
# nmap: used for network discovery and security auditing, localhost is the target,
# -A: aggressive scan.
# you can see from the output that 31790 port is listening on SSL/unknown.
#copy the private key

# Now to be able to login to next level we need use the out put and store in SSH key.
mkdir /tmp/sshkey_bandit17
cd /tmp/sshkey_bandit17
touch private.key
vim private.key #paste the SSH key here.
chmod 400 private.key # changind the permission to read only. (It will throw an error if this is not done)
ls -l # to verify
ssh -i private.key -p 2220 bandit17@localhost # enter "yes" if prompted
cat /etc/bandit_pass/bandit17

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!