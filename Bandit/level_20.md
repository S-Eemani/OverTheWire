## Level 20 → Level 21

### Objective:
There is a setuid binary in the home directory that does the following: it makes a connection to localhost on the port you specify as a command line argument. It then reads a line of text from the connection and compares it to the password from the previous level (bandit20). If the password is correct, it will transmit the password for the next level (bandit21).

### SSH Credentials for Level 20:
- **Username**: `bandit20@bandit.labs.overthewire.org`
- **Password**: `0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO` (output from level 19)

### Steps:

1. Use `netcat` to create a listener on port `1234` and echo the current password to it:
    ```bash
    echo "0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO" | netcat -lp 1234 &
    ```
   - This command sets up a server on port 1234 that will send the password when a client connects.

2. Execute the setuid binary to connect to localhost on port `1234`:
    ```bash
    ./suconnect 1234
    ```
   - If the password is correct, it will transmit the password for the next level.

3. Use the `exit` command to exit `bandit20`:
    ```bash
    exit
    ```

---

### Happy Hacking!
