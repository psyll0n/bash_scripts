#!/bin/bash 
# for_while_and_until_loops.sh - Demonstrates 'for', 'while' and 'until' loops in Bash.


# 'for' loop example.
echo "Starting the 'for' loop..."
for i in 1 2 3 4 5
do
    echo "Looping ... number $i"
done

# C-style 'for' loop.
echo "Starting the C-style 'for' loop..."
for (( i=0 ; i<5 ; i++ )); do echo "The value of i is: " $i; done


# 'while' loop example.
echo "Declaring x as 10..."
echo "Starting the 'while' loop..."
declare -i x=10

while (( x > 0 )) ; do 
    echo "The value of x is:" $x
    x=x-1
done


# 'until' loop example. 
echo "Declaring y as 5..."
echo "Starting the 'until' loop..."
declare -i y=5

until (( y == 0 )) ; do 
    echo "The value of y is: " $y
    y=y-1
done


