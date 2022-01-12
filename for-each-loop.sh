#!/bin/bash
# for_each_loop.sh

array=(1 2 3 4 5 6)

for y in "${array[@]}"; do
    # act on $y
    echo $y
done

# classic for loop.
for ((idx=0; idx<${#array[@]}; idx++)); do
    # act on ${array[idx]}
    echo ${array[$idx]}
done

# You can also iterate over the output of a command:
a=("$(tr ',' ' ' <<<"a,b,c,d,e,f")") # tr can transform one character to another.
for y in "${a[@]}"; do
    echo "$y"
done