## Level 3 → Level 4

### Objective:
The password for the next level is stored in a hidden file located in the `inhere` directory.

### SSH Credentials for Level 3:
- **Username**: `bandit3@bandit.labs.overthewire.org`
- **Password**: `MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx`

### Explanation:
- Hidden files typically start with a dot (`.`) and do not appear with a normal `ls` command. Use `ls -a` or `ll` to list hidden files.

### Steps:

1. Change to the `inhere` directory:
    ```bash
    cd inhere
    ```

2. List all files, including hidden ones:
    ```bash
    ll
    ```

3. Find and display the contents of the hidden file containing the password:
    ```bash
    cat .hidden
    ```

4. Copy the password displayed and use it to log into the next level (`bandit4`) via SSH:
    ```bash
    ssh bandit4@bandit.labs.overthewire.org -p 2220
    ```

5. Use the `exit` command to exit `bandit3` when you're done:
    ```bash
    exit
    ```

### Happy Hacking!
