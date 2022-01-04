#!/bin/bash


# 02-08-2019
# break & continue a loop - example script

echo "Linux Scripting Book"

FN1=/tmp/break.txt
FN2=/tmp/continue.txt

x=1
while [ $x -le 1000000 ] 
do
	echo "x:$x"
	if [ -f $FN1 ]; then
		echo "Running the break command"
		rm -f $FN1
		break
	fi

	if [ -f $FN2 ]; then
		echo"Running the continue command"
		rm -f $FN2
		continue
	fi

	let x++
	sleep 1 
done

echo "x:$x"

echo "End of script"
