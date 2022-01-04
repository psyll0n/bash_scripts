#!/bin/bash

option=$1
arg1=$2
arg2=$3

if [ $1 = '-l' ]; then 
	shift
fi

echo arg1: $1, arg2: $2
