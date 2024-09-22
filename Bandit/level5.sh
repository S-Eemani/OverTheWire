# level 5 --> level 6
# The password for the next level is stored in a file somewhere under the inhere directory and has all of the following \n
# properties: human-readable, 1033 bytes in size, not executable

#username: bandit5@bandit.labs.overthewire.org
#password: 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

ls
cd inhere
find . -type f -size 1033c ! executable -exec file {} +| grep ASCII
# find type file whcihc is 1033 bytes 
# ! executable excludes executable file
# -exec file {} + runs the file command on each matching file to determine its type
# grep ASCII - filters ASCII file

cat ./maybehere07/.file2

#copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking! 