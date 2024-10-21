## Level 13 → Level 14

### Objective:
The password for the next level is stored in `/etc/bandit_pass/bandit14` and can only be read by user `bandit14`. For this level, instead of a password, you will be given a private SSH key that can be used to log into the next level.

### SSH Credentials for Level 13:
- **Username**: `bandit13@bandit.labs.overthewire.org`
- **Password**: `FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn`

### Steps:

1. SSH into `bandit14` using the provided private SSH key:
    ```bash
    ssh -i sshkey.private -p 2220 bandit14@localhost
    ```
   - `-i`: Specifies the private key.
   - `-p 2220`: Specifies the port.

2. Once logged in, read the password from the specified file:
    ```bash
    cat /etc/bandit_pass/bandit14
    ```

3. Copy the password for the next level.

4. Use the `exit` command to exit `bandit13`:
    ```bash
    exit
    ```

---

### Happy Hacking!
