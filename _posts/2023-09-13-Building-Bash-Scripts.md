SHELL SCRIPTING
---
Some things I recently learned about writing shell scripts:
  1. A basic shell script typically starts with a shebang (#!) line, which specifies the shell to use. For Bash, use: #!/bin/bash
  2. Before you can run your script, you need to make it executable. with **chmod +x my_script.sh**
  3. You can get the shell script to wait a period of times equal to N seconds with **sleep N**
  4. If you need to write a substantial amount of code or need to dynamically generate code within your script, tools like **cat** or **heredoc** (EOF) work:
     code=$(cat <<EOF
        def hello():
            print("Hello from the script!")
        hello()
        EOF
        )
  5. Entomb the first EOF (end-of-file marker) in the code above with parentheses to write any variables as is and to not pass arguments into the code
  6. **$N** is used for arguments placed after the ./example.sh command. Ex: ./example.sh arg1 means referencing $1 is arg1, arg0 is the .sh file
  7. **sed** may be used to insert text into a specific line or after/before a pattern in a file. Ex: **'/pattern_to_match/ i\Insert this text after the matched pattern' file.txt**
  8. Multiple lines may be done in this fashion:
         sed -i '/pattern_to_match/r /dev/stdin' file.txt <<EOF
            Line 1 to insert
            Line 2 to insert
            Line 3 to insert
         EOF
