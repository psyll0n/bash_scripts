#!/bin/bash
# loop_through_arguments.sh - Demonstrates how the 'shift' handle can be used 
# to loop through a list of arguments. 


while (( "$#" ))
do
   echo "$1"
   shift
done
