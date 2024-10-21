## Level 21 → Level 22

### Objective:
A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in `/etc/cron.d/` for the configuration and see what command is being executed.

### SSH Credentials for Level 21:
- **Username**: `bandit21@bandit.labs.overthewire.org`
- **Password**: `EeoULMCra2q0dSkYj561DX7s1CpBuOBt` (output from level 20)

### Steps:

1. List the contents of `/etc/cron.d/` to find the relevant cron job configuration:
    ```bash
    ls /etc/cron.d/
    ```

2. View the content of the `cronjob_bandit22` file to understand what command is being executed:
    ```bash
    cat /etc/cron.d/cronjob_bandit22
    ```
   - This file will provide insight into the scheduled job.

3. Identify the script that is being executed by the cron job:
    ```bash
    cat /usr/bin/cronjob_bandit22.sh
    ```
   - Review the script to see where the output is directed.

4. Check the output file specified in the script (as indicated in the cron job):
    ```bash
    cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
    ```
   - The password for the next level will be found in this file.

5. Use the `exit` command to exit `bandit21`:
    ```bash
    exit
    ```

---

### Happy Hacking!
