## Level 22 → Level 23

### Objective:
A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in `/etc/cron.d/` for the configuration and see what command is being executed.

### Note:
Looking at shell scripts written by other people is a very useful skill. The script for this level is intentionally made easy to read. If you are having problems understanding what it does, try executing it to see the debug information it prints.

### SSH Credentials for Level 22:
- **Username**: `bandit22@bandit.labs.overthewire.org`
- **Password**: `c` (output from level 21)

### Steps:

1. List the contents of `/etc/cron.d/` to find the relevant cron job configuration:
    ```bash
    ls /etc/cron.d/
    ```

2. View the content of the `cronjob_bandit23` file to understand what command is being executed:
    ```bash
    cat /etc/cron.d/cronjob_bandit23
    ```

3. Identify the script that is being executed by the cron job:
    ```bash
    cat /usr/bin/cronjob_bandit23.sh
    ```

4. The script contains a command that prints an MD5 checksum of the string "I am user bandit23":
    ```bash
    echo "I am user bandit23" | md5sum | cut -d ' ' -f 1
    ```

5. Check the output file specified in the script:
    ```bash
    cat /tmp/8ca319486bfbbc3663ea0fbe81326349
    ```
   - The password for the next level will be found in this file.

6. Use the `exit` command to exit `bandit22`:
    ```bash
    exit
    ```

---

### Happy Hacking!
