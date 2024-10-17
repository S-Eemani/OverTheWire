## Level 7 → Level 8

### Objective:
The password for the next level is stored in the file `data.txt` next to the word "millionth".

### SSH Credentials for Level 7:
- **Username**: `bandit7@bandit.labs.overthewire.org`
- **Password**: `morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj`

### Steps:

1. List the files in the current directory to locate `data.txt`:
    ```bash
    ls
    ```

2. Use the `grep` command to search for the word "millionth" in the `data.txt` file:
    ```bash
    grep -nw "millionth" data.txt
    ```
   - `grep`: Used for searching and filtering text.
   - `-n`: Displays the line number along with the matching line.
   - `-w`: Matches whole words only, not substrings.

3. Once the line containing "millionth" is found, copy the password next to it.

4. Use the `exit` command to exit `bandit7`:
    ```bash
    exit
    ```

---

### Happy Hacking!
