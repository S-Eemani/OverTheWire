## Level 18 → Level 19

### Objective:
The password for the next level is stored in a file named `readme` in the home directory. Unfortunately, someone has modified `.bashrc` to log you out when you log in with SSH.

### SSH Credentials for Level 18:
- **Username**: `bandit18@bandit.labs.overthewire.org`
- **Password**: `x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO` (output from level 17)

### Steps:

1. Retrieve the password from the `readme` file using the following command:
    ```bash
    ssh bandit18@bandit.labs.overthewire.org -p 2220 "cat ~/readme"
    ```
   - Enter the password when prompted.

2. **Note**: Since the `.bashrc` file has been modified, logging in normally would cause you to be logged out immediately. This command executes `cat ~/readme` directly without staying logged in.

3. Use the `exit` command to exit `bandit18`:
    ```bash
    exit
    ```

---

### Happy Hacking!
