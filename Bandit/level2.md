## Level 2 → Level 3

### Objective:
The password for the next level is stored in a file called `spaces in this filename` located in the home directory. The file name contains spaces, which requires special handling.

### SSH Credentials for Level 2:
- **Username**: `bandit2@bandit.labs.overthewire.org`
- **Password**: `263JGJPfgU6LtdEvgfWU1XP5yac29mFx`

### Explanation:
- When dealing with file names that contain spaces, you should enclose the file name in quotes to prevent the system from misinterpreting the spaces as separate arguments.

### Steps:

1. Display the contents of the file using the `cat` command with quotes around the file name:
    ```bash
    cat "spaces in this filename"
    ```

2. Copy the password displayed and use it to log into the next level (`bandit3`) via SSH:
    ```bash
    ssh bandit3@bandit.labs.overthewire.org -p 2220
    ```

3. Use the `exit` command to exit `bandit2` when you're done:
    ```bash
    exit
    ```

### Happy Hacking!
