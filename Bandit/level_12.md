## Level 12 → Level 13

### Objective:
The password for the next level is stored in the file `data.txt`, which is a hexdump of a file that has been repeatedly compressed. You will need to extract and decompress the file multiple times to retrieve the password.

### SSH Credentials for Level 12:
- **Username**: `bandit12@bandit.labs.overthewire.org`
- **Password**: `7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`

### Steps:

1. Create a temporary directory to work in:
    ```bash
    temp_dir=$(mktemp -d)
    cd "$temp_dir"
    ```

2. Copy the `data.txt` file to this directory:
    ```bash
    cp ~/data.txt .
    ```

3. Rename `data.txt` to remove the extension:
    ```bash
    mv data.txt data
    ```

4. Convert the hexdump back to binary:
    ```bash
    xxd -r data > binary
    ```

5. Check the file type:
    ```bash
    file binary
    ```
   You should see that it's `gzip` compressed.

6. Rename and decompress the file:
    ```bash
    mv binary binary.gz
    gunzip binary.gz
    ```

7. Continue decompressing and extracting using the following commands, based on the file types detected:
   - **For `bzip2`**:
     ```bash
     bunzip2 binary
     ```
   - **For `tar`**:
     ```bash
     tar -xf binary
     ```

8. Repeat the process of checking the file type, renaming, and decompressing as needed until you reach the final ASCII text file containing the password.

9. Once you find the ASCII text file:
    ```bash
    cat data8
    ```

10. Copy the password found in `data8`.

11. Use the `exit` command to exit `bandit12`:
    ```bash
    exit
    ```

---

### Happy Hacking!
