## Python Single Line Scripts

---

- **Simple Python Server**

	- By default it will run on Port `8000` and you can access all the resouces in current directory
	
	  `python -m SimpleHTTPServer`

  - You can specify by defining the port what you want (Ex: 12345)
  
    `python -m SimpleHTTPServer 12345`

- **Json Formatter**

  - Parse the JSON data pretty format
    
    `python -m json.tool testfile.json`

- **Run OS commands**

   `python -c 'import os; os.system("command here")'`

- **Python Bash shell**

   `python -c 'import pty; pty.spawn("/bin/bash")'`
