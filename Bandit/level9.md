## Level 9 → Level 10

### Objective:
The password for the next level is stored in the file `data.txt` and is one of the few human-readable strings, preceded by several ‘=` characters.

### SSH Credentials for Level 9:
- **Username**: `bandit9@bandit.labs.overthewire.org`
- **Password**: `4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`

### Steps:

1. Use the `strings` and `grep` commands to find the human-readable string preceded by `=` characters:
    ```bash
    strings data.txt | grep "="
    ```
   - `strings`: Extracts readable strings from the `data.txt` file.
   - `grep "="`: Filters the output for strings containing `=` characters.

2. Copy the password found in the output.

3. Use the `exit` command to exit `bandit9`:
    ```bash
    exit
    ```

---

### Happy Hacking!
