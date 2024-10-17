## Level 5 → Level 6

### Objective:
The password for the next level is stored in a file somewhere under the `inhere` directory. The file has the following properties: it is human-readable, 1033 bytes in size, and not executable.

### SSH Credentials for Level 5:
- **Username**: `bandit5@bandit.labs.overthewire.org`
- **Password**: `4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw`

### Steps:

1. List the contents of the current directory:
    ```bash
    ls
    ```

2. Change to the `inhere` directory:
    ```bash
    cd inhere
    ```

3. Use the `find` command to search for the file with the required properties:
    ```bash
    find . -type f -size 1033c ! -executable -exec file {} + | grep ASCII
    ```
   - `find . -type f`: Search for files under the current directory.
   - `-size 1033c`: Filter files that are exactly 1033 bytes in size.
   - `! -executable`: Exclude executable files.
   - `-exec file {} +`: Run the `file` command on each matching file to check if it is human-readable.
   - `grep ASCII`: Filter results to show only ASCII (human-readable) files.

4. Display the contents of the identified file:
    ```bash
    cat ./maybehere07/.file2
    ```

5. Use the `exit` command to exit `bandit5`:
    ```bash
    exit
    ```

---

### Happy Hacking!
