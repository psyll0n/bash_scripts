#!/bin/bash

# Iterate over numbers from 1 to 100
for i in {1..100}
do
    if (( i % 100 == 0 )); then
	echo "$i baz"
    elif (( i % 3 == 0 )); then
 	echo "$i foo"
    elif (( i % 5 == 0 )); then
       	echo "$i bar"
    else
       	echo $i
    fi
done
