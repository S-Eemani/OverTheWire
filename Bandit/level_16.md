## Level 16 → Level 17

### Objective:
The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First, find out which of these ports have a server listening on them. Then find out which of those speak SSL/TLS and which don’t. There is only one server that will give the next credentials; the others will simply send back whatever you send to them.

### SSH Credentials for Level 16:
- **Username**: `bandit16@bandit.labs.overthewire.org`
- **Password**: `kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx` (output from level 15)

### Steps:

1. Use `nmap` to scan the ports from 31000 to 32000:
    ```bash
    nmap localhost -p 31000-32000 -A
    ```
   - `nmap`: Used for network discovery and security auditing. In this case, it targets localhost.
   - `-A`: Enables aggressive scan options to gather more information.

2. Identify which port is listening with SSL/TLS (in this case, let's assume it's port 31790).

3. Submit the current password to the identified port:
    ```bash
    echo "kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx" | openssl s_client -connect localhost:31790 -ign_eof
    ```
   - This command establishes a secure SSL/TLS connection to the specified port.

4. Copy the private key provided in the output.

5. Create a directory to store the private key:
    ```bash
    mkdir /tmp/sshkey_bandit17
    cd /tmp/sshkey_bandit17
    touch private.key
    vim private.key  # Paste the SSH key here.
    chmod 400 private.key  # Change the permission to read-only.
    ```

6. Verify the permissions:
    ```bash
    ls -l
    ```

7. Use the private key to log into the next level:
    ```bash
    ssh -i private.key -p 2220 bandit17@localhost
    ```
   - Enter "yes" if prompted.

8. Retrieve the password for the next level:
    ```bash
    cat /etc/bandit_pass/bandit17
    ```

9. Use the `exit` command to exit `bandit16`:
    ```bash
    exit
    ```

---

### Happy Hacking!
