#!/bin/bash
# for_loop_and_array.sh - Demonstrates how a C-style 'for' loop can be used
# to iterate through the elements in an array.

# Declare an array with a list of users. 
declare -a users=("bob" "joe" "sue")


# Loop through the values in the array. 
for ((i=0; i < ${#users[*]}; i++)) ; do
    echo ${users[$i]};
done

