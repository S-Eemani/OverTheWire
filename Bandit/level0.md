## Level 0 → Level 1

### Objective:
The password for the next level is stored in a file called `readme` located in the home directory. Use this password to log into `bandit1` using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.

### SSH Credentials for Level 0:
- **Username**: `bandit0@bandit.labs.overthewire.org`
- **Password**: `bandit0`

### Steps:

1. List all files and directories in the current directory:
    ```bash
    ls
    ```
    You should see the file `readme`.

2. Display the contents of the `readme` file to find the password:
    ```bash
    cat readme
    ```

3. Copy the password and use it to log into the next level (`bandit1`) via SSH:
    ```bash
    ssh bandit1@bandit.labs.overthewire.org -p 2220
    ```

4. Use the `exit` command to exit `bandit0` when you're done:
    ```bash
    exit
    ```

### Happy Hacking!
