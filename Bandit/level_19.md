## Level 19 → Level 20

### Objective:
To gain access to the next level, you should use the setuid binary in the home directory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (`/etc/bandit_pass`) after you have used the setuid binary.

### SSH Credentials for Level 19:
- **Username**: `bandit19@bandit.labs.overthewire.org`
- **Password**: `cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8` (output from level 18)

### Steps:

1. Execute the setuid binary to find out how to use it:
    ```bash
    ./bandit20-do
    ```
   - This will display the usage instructions.

2. Now, use the setuid binary to read the password for the next level:
    ```bash
    ./bandit20-do cat /etc/bandit_pass/bandit20
    ```
   - The command reads the password from the specified file.

3. **Note**: You may need to use `id` to confirm your permissions and understand how the setuid binary operates.

4. Use the `exit` command to exit `bandit19`:
    ```bash
    exit
    ```

---

### Happy Hacking!
