#!/bin/bash
# For Loop with C-style syntax.
# syntax: for (( variable assignment; condition; iteration process ))

for (( i=0; i <= 10; i++ ))
do
    echo "Value of i: $i"
done

# C-style for loop with multiple variables.
for (( i = 0, j = 0; i <= 10; i++, j = i * i ))
do
    echo "The square of $i is equal to $j"
done