#!/bin/bash 

# 16/11/2018

if [ $# -ne 3 ] ; then
	echo "Usage: script6 param1 param2 param3"
	echo " Please enter 3 parameters."



	exit 255
fi

echo Parameter 1: $1
echo Parameter 2: $2
echo Parameter 3: $3

exit 0

