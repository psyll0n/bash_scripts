#!/bin/bash

# Usage: if_else_condition.sh filename [number]
# Print the [number] of websites with the most hits. The [number] defaults to 5.


filename=${1:?Please enter a filename} 
count=${2:-5}

if [ $count -lt 0 ]; then
	echo "Please enter a valid count value"
fi 

function greeting(){
	echo "Thanks for using the script"
}

function getWebsites(){
	if ls $filename > /dev/null 2>&1; then
		echo "$(sort -n $filename | tail -$count)"
	else
		echo "Please enter a valid filename"
		return 1 
	fi 
} 
getWebsites
greeting


