# level 7 --> level 8
# The password for the next level is stored in the file data.txt next to the word millionth

#username: bandit7@bandit.labs.overthewire.org
#password: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj

# if you do ls, you can find a data.txt file. if you do cat data.txt file, you can see that it is a very long file.
# we just have to find the line which has "millionth" word ot see what is next to it.
grep -nw "millionth" data.txt
# grep - used for searching and filtering using some parameters such as
# -n: displays the line number along with the line
# -w: matches whole words only, not substrings
# other important options to grep:
 ### -i: makes the search case-sensitive
 ### -v: prints sentense that do no have the word (invert)
 ### -r: (recursive search) searches through all the files in a directory
 ### -f: use a file for pattern matches 
# |: takes the output of grep and gives it to cat command
# cat -A: prints non-printing characters and whitespace in a visible form

#copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!