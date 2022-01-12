#!/bin/bash
# until_loop_example2.sh

i=5

until [[ i -eq 10 ]]; do # Checks whether i is equal to 10.
    echo "i=$i" # Prints the value of i.
    i=$((i+1))  # Increments i by 1.
done