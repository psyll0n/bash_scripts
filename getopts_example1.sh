#!/bin/bash


# Usage ./scriptname -l or ./scriptname -n{num} ||  ./scriptname -h -n{num}

while getopts ":hln:" opt; do

	case $opt in 
		h ) echo "Getting the highest rated" ;;
		l ) echo "Getting the lowest rated" ;; 
		n ) echo "Returning $OPTARG results only" ;; 
		\? ) echo "Invalid option"; exit 1
	esac 
done

shift $((OPTIND -1))
filename=$1
echo $filename
