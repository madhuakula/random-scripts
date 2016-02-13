## Bash Single Line Scripts

---

- Basic command line references - [http://www.pixelbeat.org/cmdline.html](http://www.pixelbeat.org/cmdline.html)

- SSH into a box with hidden mode

  `ssh user@ipaddress -T shell` 

  Ex :- `ssh madhu@192.168.56.100 -T /bin/bash`

- While loop for passing file and read line by line

  `while read line; do cat $line; done < file.txt`
  
- Large files in current directory
  
  `find ./ -xdev -type f -size +1G`
  
  ```
  you can change location and size of the file by tweaking the command
  ```
- Get IP addresses from a file using the `grep`
  
  `grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}`

- Send Emails from terminal

  `mail -s "Subject" test@gmail.com`
  
  ```
  Ex :- cat ips.txt | mail -s "IP Addresses" google@gmail.com
  
        echo Testing | mail -s "Test Email" google@gmail.com
  ```
- Pass the output of the command to another command using `xargs`

  `whoami | xargs finger`
  
