#!/bin/bash
#
# 09/12/2018
#
# Loops in Bash Scripting

echo "Loops in Bash Scripting - Linux Scripting Book"

x=1
while [ $x -le 10 ] 
do
	echo x: $x
	let x++
done

echo "End of script"


