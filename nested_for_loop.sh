#!/bin/bash
# Nested for loop example.

arr=(a b c d e f)

for i in "${arr[@]}"; do
    echo "$i"
    
    for j in "${arr[@]}"; do
        echo "$j"
        break 2
    done
done