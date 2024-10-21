## Level 11 → Level 12

### Objective:
The password for the next level is stored in the file `data.txt`, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.

### SSH Credentials for Level 11:
- **Username**: `bandit11@bandit.labs.overthewire.org`
- **Password**: `dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr`

### Steps:

1. Use the `tr` (translate) command to perform a ROT13 cipher on the contents of `data.txt`:
    ```bash
    cat data.txt | tr 'a-z' 'n-za-m' | tr 'A-Z' 'N-ZA-M'
    ```
   - `tr 'a-z' 'n-za-m'`: Translates all lowercase letters by shifting them 13 positions.
   - `tr 'A-Z' 'N-ZA-M'`: Translates all uppercase letters by shifting them 13 positions.

2. Copy the password found in the decoded output.

3. Use the `exit` command to exit `bandit11`:
    ```bash
    exit
    ```

---

### Happy Hacking!
