## Level 14 → Level 15

### Objective:
The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.

### SSH Credentials for Level 14:
- **Username**: `bandit14@bandit.labs.overthewire.org`
- **Password**: `MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS` (output from level 13)

### Steps:

1. Use the following command to submit the current password to port 30000 on localhost:
    ```bash
    echo "MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS" | nc localhost 30000
    ```
   - `echo`: Sends the specified string as an argument to the next command.
   - `nc`: Short for Netcat, a network utility used for reading from and writing to network connections via TCP/UDP.

2. Copy the password displayed in the output for the next level.

3. Use the `exit` command to exit `bandit14`:
    ```bash
    exit
    ```

---

### Happy Hacking!
