#!/bin/bash

# Usage: scripname.sh -h || -l <filename> 
# additionally -n can be used to specify the number of displayed results


order=-h
count=5
usage="USAGE: $0 [-h |-l] [-n count] filename"
if [ $1 = '-h' ] || [ $1 = '-l' ]; then
	order=$1
	shift
fi

if [ $1 = '-n' ]; then
	if [[ -n $(echo $2 | grep '^[1-9]$') ]]; then
		count=$2
		shift 2
	else
		echo "Invalid value for count: "
		echo $usage
		exit 1
	fi
fi

if [ -s $1 ]; then
	filename=$1
else
	echo "Invalid filename or file is empty"
	echo $usage
	exit 1
fi 

case $order in 
	-h ) sort -n $filename | tail -$count ;;
	-l ) sort -rn $filename | tail -$count ;;
	* ) 
	echo $usage
esac 
	


