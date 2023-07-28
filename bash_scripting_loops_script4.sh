#!/bin/bash
#
# 09/12/2018
#
# Loops in Bash Scripting

echo "Loops in Bash Scripting - Linux Scripting Book"

# clear the screen
tput clear

row=1
while [ $row -le $LINES ] 
do 
 col=1
  while [ $col -le $COLUMNS ]
   do
      echo -n "#"
	let col++
	done

# Output a carriage return
echo ""                

let row++
done

exit 0
