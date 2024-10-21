## Level 17 → Level 18

### Objective:
There are 2 files in the home directory: `passwords.old` and `passwords.new`. The password for the next level is in `passwords.new` and is the only line that has been changed between `passwords.old` and `passwords.new`.

### SSH Credentials for Level 17:
- **Username**: `bandit17@bandit.labs.overthewire.org`
- **Password**: `EReVavePLFHtFlFsjn3hyzMlvSuSAcRD` (output from level 16)

### Steps:

1. Compare the two files to identify the changes:
    ```bash
    diff passwords.new passwords.old
    ```
   - The output will indicate which lines are present in each file:
     - `<`: Indicates the line present in `passwords.new` only.
     - `>`: Indicates the line present in `passwords.old` only.

2. Copy the string that appears after the `<` symbol. This is the password for the next level.

3. **Note**: When you try to log in using the password, you may see a message saying "Bye-Bye." This is expected behavior.

4. Use the `exit` command to exit `bandit17`:
    ```bash
    exit
    ```

---

### Happy Hacking!
