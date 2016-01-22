## Bash Single Line Scripts

---

- SSH into a box with hidden mode

  `ssh user@ipaddress -T shell` 

  Ex :- `ssh madhu@192.168.56.100 -T /bin/bash`

- While loop for passing file and read line by line

  `while read line; do cat $line; done < file.txt`
