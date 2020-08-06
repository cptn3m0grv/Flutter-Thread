#!/usr/bin/python3
import cgi
import subprocess

# Put this script in /var/www/cgi-bin/ directory in your linux server
# Also add the following line in the /etc/sudoers
# apache ALL=(ALL) ALL NOPASSWD: ALL
# Mind the spaces in the above line
# Also run the following command if you are using RHEL7 or RHEL8
# setenforce 0

print("Content-Type: text/html")
print()

myData = cgi.FieldStorage()
myimage = myData.getValue("i")
myos = myData.getValue("o")

myCommand = "docker run -dit --name {} {}".format(myos, myimage)

print(subprocess.getOutput(myCommand))
