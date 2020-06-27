#!/usr/bin/env bash
##A System Information Gathering Script - bash

# Command 1

UNAME="uname -a"

	# Variable="value". NO SPACE allowed.

printf "Gathering system information with the $UNAME command: \n\n"

	
	#\n = next line, equal to "Enter Key".

$UNAME

## Command 2

DISKSPACE="df -h"
printf "Gathering diskspace information with the $DISKSPACE command: \n\n"
$DISKSPACE
