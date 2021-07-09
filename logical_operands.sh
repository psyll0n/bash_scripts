#!/bin/bash
#
# 24/11/2018
#

echo "logical_operands.sh"

if [ $# -ne 4 ] ; then
	echo "Usage: script9 number1 number2 number3 number4"
	echo "Please, enter 4 numbers."
fi

echo Parameters: $1 $2 $3 $4

## Logical AND demo 

echo Showing logical AND

if [[ $1 -eq $2 && $3 -eq $4 ]] ; then
	echo Clause 1
else
	echo Clause 2
fi


## Logical OR demo

echo Showing logical OR

if [[ $1 -eq $2 || $3 -eq $4 ]] ; then 
	echo Clause 1
else
	echo Clause 2
fi

echo "End of script9"
exit 0




