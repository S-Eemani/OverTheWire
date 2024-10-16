## Level 1 → Level 2

### Objective:
The password for the next level is stored in a file called `-` located in the home directory. The file name is a dash (`-`), which can cause issues with some commands.

### SSH Credentials for Level 1:
- **Username**: `bandit1@bandit.labs.overthewire.org`
- **Password**: `ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If`

### Explanation:
- Files or folder names that begin with a dash (`-`) might cause problems with commands since `-` is often used to introduce flags or options (like `-f`, `-r`).
- For example, if you try to run `cat -`, the system will wait for more arguments instead of reading the file.

### Steps:

1. To view the contents of the file `-`, use the `more` command:
    ```bash
    more -
    ```

2. Copy the password displayed and use it to log into the next level (`bandit2`) via SSH:
    ```bash
    ssh bandit2@bandit.labs.overthewire.org -p 2220
    ```

3. Use the `exit` command to exit `bandit1` when you're done:
    ```bash
    exit
    ```

### Happy Hacking!
