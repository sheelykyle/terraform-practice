Some things I learned in the last two weeks.
---

Terraform
---
 - referenced files should be done in the fashion file("file.ext") and not "${file("file.ext")}" to avoid interpolation warnings

 - "data" blocks reference something that already exists and Terraform wants use some attribute to create new resources

 - "resource" blocks create something new from your Terraform stack

 - use "user_data" arguments to provide script or cloud-init configurations to customize EC2 or other installs
   - ex. *User_data = file("script.sh")*

Bash/Linux
---
 - A basic shell script typically starts with a shebang (#!) line, which specifies the shell to use. For Bash, use: #!/bin/bash
   
 - you call a shell script with "./script-name.sh"
   
 - you can make the shell script wait 5 seconds between two commands by inserting "sleep 5" between them
   
 - to add text into an existing file, write "echo "Additional text" >> existingfile.py"
   
 - give a script execute permissions (if it doesn't already have it) with "chmod +x script-name.sh"
   
 - to pass an argument to a shell script from the command line, put it after the shell script command "./script-name.sh arg1 arg2 etc"
   
 - reference arguments passed at the command line in the script with $1, $2, etc. $0 is the shell script file name
   
 - to open vi, perform a command, then close it all without user involvement, use the "--wait" flag.
   
 - use *sed* to insert text into a specific line or after/before a pattern in a file.
   - "sed -i '/pattern_to_match/ i\Insert this text after the matched pattern' file.txt"
     
 - to insert multiple lines into a specific part of a file using sed directly from the command line,
   - sed -i '/pattern_to_match/r /dev/stdin' file.txt <<EOF
        Line 1 to insert
        Line 2 to insert
        Line 3 to insert
    EOF

 - use *apt-get* over *apt* for scripts. Use the *-y* flag to have the commands default submit yes when prompted
   
 - use the variable "DEBIAN_FRONTEND=noninteractive" then the *-E* flag in *apt-get* commands to not have user prompts from commands

GitHub
---
To pull a file from a GitHub repository using deploy keys, do the following:
 1. Generate a deploy key with *ssh-keygen -t ed25519 -C "your_email@example.com"*
 2. Display and copy the deploy key with *cat ~/.ssh/id_ed25519.pub*
 3. Add the key to your GitHub Repo in Settings > Deploy Key
 4. Verify the deploy key permissions with:
    *chmod 600 ~/.ssh/id_ed25519*
    *chmod 644 ~/.ssh/id_ed25519.pub*
 6. Clone the repository with *git clone git@github.com:username/repository.git*


Splunk
---
 - to remove everything before and including the : in a Splunk field, use the following in your search:
your_search_here
| rex field=original_field "(?<=:)(?<new_field>.+)"




