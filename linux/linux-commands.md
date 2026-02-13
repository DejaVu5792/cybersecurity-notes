# Linux Basics

## Commands I've Learned
- Structure: command [flags] file [arguments]
- pwd - show current working location
- ls - show files/folders in the current working directory
  - ls -ld - show directory detailed information
  - ls -lR - show the metadata of a directory's contents and subdirectories
  - ls -a - show hidden files
  - ls -lh - show human-readable file list
  - ls -lt - sort by time
- echo - print what you type
- whoami - show the current user's account
- cd - move across directories/folders
- grep - find a specified word
- find - locate a file
- `>` - overwrite a file's content or create one if the file is non-existent
- `>>` - add something to a file
- & - run a command in the background
- && - run two commands; the second command will only run if the first command succeeds
- man - show the manual page of a command
  - man ls
- cp - copy file/directory
- mv - move file/directory
- rm - remove file/directory permanently; always use -i for safety
- chmod - modify file permissions
- sudo - gain root access to a specific command, temporarily 

## Flags - modify commands
- ls -l - show files in a long list format
- ls -a / ls --all - show all files, including the hidden ones
- `-r` - operate on a directory and its contents
  - rm -r example_directory
- `--help` - show everything about the command
- `-i` - permissiion; y + enter for yes and n + enter for no
  - rm -ir directory - will ask first before deletion 
- `-v` - show what happened
- `-n` - avoid overwriting when copying
  
## Arguments - destination
- `..` - parent directory
  - cd ../.. - move two directories from the current directory
 
## Path Shortcuts 
- `~` - referes to home directory
  - cd ~ - drag you to /home/username
- `..` - refers to parent directory
  - if you are at /home/username/directory, using ls .. will show the list of files inside /home/username
- `.` - referes to current directory
  - cd . will do nothing 

 ## Wildcards - shortcut for grouping (finding, moving, etc.) files using a pattern
 - `*`
   - rm *.log will remove files that ends with .log
 - `?`
   - rm file?.txt literally means remove file[any single character].txt

