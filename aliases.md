# Useful Aliases for UCR Embedded Courses

In Ubuntu, add these entries in `~/.bash_aliases` file (`~/.bashrc` if you are on other distros). 

These are just examples, change the directories accordingly.

1. Quickly change to your working directory;

    ```bash
    # Change '.../your_working_dir' to your working directory.
    alias labdir="cd '/mnt/.../your_working_dir'"
    ```

2. Create a CS120B project in current directory;

    ```bash
    # Change '.../your_working_dir' to your working directory.
    alias createProj="'/mnt/.../your_working_dir/UCRCS120B_AVRTools/createProject.sh'"
    ```

3. Save lab files and zip them when finished.

    You can find [this bash script](turnin.sh) for your lab files.

    It can rename, save, and push the files to GitHub, and zip the turnin folder when you finish.

    Remember to change line 4 to your UCR Net ID.

    ```bash
    # Change '...' to the directory you saved the file.
    alias saveProj="/mnt/.../turnin.sh"
    ```
