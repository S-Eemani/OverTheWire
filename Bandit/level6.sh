# level 6 --> level 7
# The password for the next level is stored somewhere on the server and has all of the following properties:
# owned by user bandit7, owned by group bandit6, 33 bytes in size

#username: bandit6@bandit.labs.overthewire.org
#password: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

find / -user bandit7 -group bandit6 -size 33c -type f 2>/dev/null
# find /: start searching from the root directory for -user bandit7 -group bandit6 -size 33c and a regular file type (-type f).
# 2>/dev/null: Redirects any error messages (such as permission denied errors) to /dev/null, effectively discarding them. This prevents cluttering the output with unwanted error messages while searching the entire file system.

#this will print the path of the file, if one exists. Next cat (print) the file.
cat /var/lib/dpkg/info/bandit7.password

#copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!