## Level 15 → Level 16

### Objective:
The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.

### SSH Credentials for Level 15:
- **Username**: `bandit15@bandit.labs.overthewire.org`
- **Password**: `8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo` (output from level 14)

### Steps:

1. Use the following command to submit the current password to port 30001 on localhost using SSL/TLS:
    ```bash
    echo "8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo" | openssl s_client -connect localhost:30001 -ign_eof
    ```
   - `openssl s_client`: Establishes a secure SSL/TLS connection to the specified address and port.
   - `-ign_eof`: Ignores the end of the connection, allowing the server to wait until explicitly closed.

2. Copy the password displayed in the output for the next level.

3. Use the `exit` command to exit `bandit15`:
    ```bash
    exit
    ```

---

### Happy Hacking!
