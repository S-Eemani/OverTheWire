## Level 8 → Level 9

### Objective:
The password for the next level is stored in the file `data.txt` and is the only line of text that occurs exactly once.

### SSH Credentials for Level 8:
- **Username**: `bandit8@bandit.labs.overthewire.org`
- **Password**: `dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`

### Steps:

1. Use the `sort` and `uniq` commands to find the unique line in `data.txt`:
    ```bash
    sort data.txt | uniq -u
    ```
   - `sort`: Sorts the lines in `data.txt` alphabetically.
   - `uniq -u`: Prints only the lines that occur exactly once (requires sorted data).

2. Copy the password found in the unique line.

3. Use the `exit` command to exit `bandit8`:
    ```bash
    exit
    ```

---

### Happy Hacking!
