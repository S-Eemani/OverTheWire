## Level 10 → Level 11

### Objective:
The password for the next level is stored in the file `data.txt`, which contains Base64 encoded data.

### SSH Credentials for Level 10:
- **Username**: `bandit10@bandit.labs.overthewire.org`
- **Password**: `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`

### Steps:

1. Use the `base64` command to decode the `data.txt` file:
    ```bash
    base64 -d data.txt
    ```
   - `base64 -d`: Decodes Base64 encoded data from the file.

2. Copy the password found in the decoded output.

3. Use the `exit` command to exit `bandit10`:
    ```bash
    exit
    ```

---

### Happy Hacking!
