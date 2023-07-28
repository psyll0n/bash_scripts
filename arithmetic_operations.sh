#!/bin/bash
# Arithmethic operations

declare -i a=50
declare -i b=20
declare -i sum1 sum2 sum3 sum4


sum1=$a+$b
echo "1: Sum is $sum1"

# First approach
sum2=$((a+b))
echo "2: Sum is $sum2"

# Second approach
let sum3=$a+$b
echo "3: Sum is $sum3"

# Third approach 
sum4=`expr $a + $b`
echo "4: Sum is $sum4"

# Subtraction
sub=$(( a-b ))
echo "5: The result is: $sub"

# Multiplication
multi=$(( a*b ))
echo "6: The total is: $multi"

# Division
div=$(( a/b ))
echo "7: The result is: $div"

# Modulus
mod=$(( a%b ))
echo "8: Modulus: $mod"

# ++ Increment by 1
echo $(( a ))
echo $(( a++ ))
echo $(( a ))
echo $(( ++a ))
echo $(( a ))

# -- Decrement by 1
echo $(( a ))
echo $(( a-- ))
echo $a
echo $(( --a ))
echo $a

# Aritmetic comparators
# less than, greater than... etc.
# -lt, -gt, -le, -ge, -eq, -ne
#  < ,  > ,  <= , >= , == , !=

a=100
b=20

if [[ $a -lt $b ]]; then
  echo "1: True"
else 
  echo "1: False"
fi 


if (( a > b )); then 
  echo "2: True"
else 
  echo "2: False"
fi