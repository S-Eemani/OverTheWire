# level 12 --> level 13
# The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been \n
# repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. \n
# Use mkdir with a hard to guess directory name. Or better, use the command “mktemp -d”. Then copy the datafile using cp, \n
#  and rename it using mv (read the manpages!)

#username: bandit12@bandit.labs.overthewire.org
#password: 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4 (from level11)

#password is stored in hexdump (heaxadecimal format) and the file is reoeatedly compressed.
#first part of the task is to create a directory under /tmp using mktemp -d
temp_dir=$(mktemp -d) # generates a temporary file or directory
cd "$temp_dir" # we are now inside the temp directory
cp ~/data.txt . #copy the data.txt file into this directory
ls # to check the if the file got copied or not
mv data.txt data # removing the extension
ls # to check if only data is there (no extension)
xxd -r data > binary # xxd: converts binary to hexdump and viceversa
ls # you should find binary and date
file binary # to find the file type. You should see that it is gzip compressed
mv binary binary.gz # renames "binary" to "binary.gz". This enables us to decompress it
gunzip binary.gz #decompress gzip file
ls # you should find binary and data
file binary # to find the file type. You should see that it is bzip2 compressed
bunzip2 binary # decompress bzip2 file
ls # binary.out and data

# You just repeat the steps multiple times to deomcpress the file as it is mentioned that the file has been \n
# compressed multiple time.

file binary.out # gzip compressed
mv binary.out binary.gz #change extension
gunzip binary.gz # decompress gzip
ls # binary and data
file binary # tar
tar -xf binary #unzip tar
ls # binary  data  data5.bin
file data5.bin # tar
rm binary data # remove extra files
ls # data5.bin
tar -xf datat5.bin #unzip data5.bin
ls # data5.bin  data6.bin(new file)
file data6.bin # bzip compressed
bunzip2 data6.bin # decompress bzip
ls # data5.bin  data6.bin.out
file data6.bin.out #tar
tar -xf data6.bin.out #unzip tar
ls # data5.bin  data6.bin.out  data8.bin
file data8.bin #gzip compressed
mv data8.bin data8.gz #change extension
gunzip data8.gz # decompress gzip
ls # data5.bin  data6.bin.out  data8
file data8 # data8: ASCII text
cat data8 

# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!