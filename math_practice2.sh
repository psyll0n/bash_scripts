#!/bin/bash
#
# math practice in bash 
#
# 02/12/2018
#
# Description: number conversion
# Conversion from decimal to binary example

no=100

echo "obase=2;$no"|bc

# the result is 1100100

# Conversion from binary to decimal

no=01011010

echo "obase=10;ibase=2;$no"|bc

# the result is 90


# Calculation of square root

echo "sqrt(100)" |bc #Square root

# Calculation of squares

echo "10^10" |bc #Square



