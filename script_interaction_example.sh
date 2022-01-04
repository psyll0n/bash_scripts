#!/bin/bash
#
#
# 02-08-2019


echo "Simple interactive script"

echo "Enter 'q' to quit."
rc=0

while [ $rc -eq 0 ]
do
	echo -n "Enter a string: "
	read str
	echo "str: $str"
	if [ "$str" = "q" ]; 
	then
rc=1
	fi
done


