#!/bin/bash
# array_example.sh - Example of using arrays in bash.

arr=(1 2 3 4 5)

# for loop to print out the array values.
for i in "${arr[@]}"; do
    echo $i
done

# alternative syntax
for ((i=0; i<${#arr[@]}; i++)); do
    echo ${arr[$i]}
done

# alternative syntax with a while loop.

i=0

while [ $i -lt ${#arr[@]} ]; do
    echo ${arr[$i]}
    i=$((i+1))
done


