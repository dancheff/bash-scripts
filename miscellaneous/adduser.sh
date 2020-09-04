#!/bin/bash
# Purpose - Script to add a user to Linux system including passsword
# ---	powered by dancheff	---
# ------------------------------------------------------------------
# Am i Root user?
if [ $(id -u) -eq 0 ]; then
	read -p "Enter full name: " full name
	read -p "Enter username: " username
	read -s -p "Enter password: " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username exists!"
		exit 1
	else
		useradd -m -p "$pass" "$username"
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi
