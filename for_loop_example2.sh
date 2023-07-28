#!/bin/bash

# Example 2 FOR loop

# IFS = Internal Field Separator / Input Field Separator

IFS=$'\n'

for user in $(cat /etc/passwd); do 
	username=$(echo $user | cut -d : -f 1)
	home=$(echo $user | cut -d : -f 6)
	echo "Username:" $username "Home directory: " $home
done





