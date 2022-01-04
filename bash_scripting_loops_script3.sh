#!/bin/bash
#
# 09/12/2018
#
# Loops in Bash Scripting

echo "Loops in Bash Scripting - Linux Scripting Book"

if [ $# -ne 1 ] ; then
	echo "Usage: script + string"
	echo "Will dispay the string on every line."
	exit 255
fi

#clear the screen
tput clear       

x=1
while [ $x -le $LINES ]
do 
	echo "*********** $1 ************"
	let x++
done
