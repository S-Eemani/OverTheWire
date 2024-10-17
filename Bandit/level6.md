## Level 6 → Level 7

### Objective:
The password for the next level is stored somewhere on the server. The file has the following properties: it is owned by user `bandit7`, owned by group `bandit6`, and is 33 bytes in size.

### SSH Credentials for Level 6:
- **Username**: `bandit6@bandit.labs.overthewire.org`
- **Password**: `HWasnPhtq9AVKe0dmk45nxy20cvUa6EG`

### Steps:

1. Use the `find` command to search for the file with the required properties:
    ```bash
    find / -user bandit7 -group bandit6 -size 33c -type f 2>/dev/null
    ```
   - `find /`: Start searching from the root directory.
   - `-user bandit7`: Search for files owned by user `bandit7`.
   - `-group bandit6`: Search for files owned by group `bandit6`.
   - `-size 33c`: Filter files that are exactly 33 bytes in size.
   - `-type f`: Search for regular files only.
   - `2>/dev/null`: Suppress error messages (like permission denied errors) to avoid clutter in the output.

2. Once the file path is found, display its contents:
    ```bash
    cat /var/lib/dpkg/info/bandit7.password
    ```

3. Use the `exit` command to exit `bandit6`:
    ```bash
    exit
    ```

---

### Happy Hacking!
