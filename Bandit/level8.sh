# level 8 --> level 9
# The password for the next level is stored in the file data.txt and is the only line of text that occurs \n
# only once

#username: bandit8@bandit.labs.overthewire.org
#password: dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc

sort data.txt | uniq -u # sort: sorts the data alphabetically and gives it as an input to the seocnd part
#uniq: only works on sorted data, uniq -u prints only the line that is present exactly once.


# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!