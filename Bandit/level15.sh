# level 15 --> level 16
# The password for the next level can be retrieved by submitting the password of the current level to port 30001 \n
# on localhost using SSL/TLS encryption.

#username: bandit15@bandit.labs.overthewire.org
#password: 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo (output of level 14)
echo "8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo" | openssl s_client -connect localhost:30001 -ign_eof
# openssl s_client: establishes a secure SSL/TLS connection to the specified address and port.
# ign_eof: ignores the end of connection. The server will wait until explicitly closed.


# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!