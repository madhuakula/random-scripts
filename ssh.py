import paramiko
# Sample script for connecting devices and systems over ssh using paramiko library
# Author : Madhu Akula - (http://www.madhuakula.com)

# IP address of the device (or) system
ip = '192.168.1.1'

# Username & Password
username = 'admin'
password = 'admin'

remote_conn_pre = paramiko.SSHClient()
remote_conn_pre
remote_conn_pre.set_missing_host_key_policy(paramiko.AutoAddPolicy())
remote_conn_pre.connect(ip, username=username, password=password)
remote_conn = remote_conn_pre.invoke_shell()

remote_conn
output = remote_conn.recv(5000)
output

remote_conn.send("\n")
output = remote_conn.recv(5000)

# Command to send to the device (or) system
remote_conn.send("whoami\n")

output = remote_conn.recv(65535)

print output
