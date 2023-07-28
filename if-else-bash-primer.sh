#!/bin/bash
# if-else-bash-primer.sh - A simpel example of if else conditions in BASH.


echo "Enter a number of days: "
days=0
read -r days


if (( days < 1 )) ; then echo "Enter a numeric value..." ; 
elif (( days > 30 )) ; then echo "Enter a value that is less than 31" ;
else echo "The days are $days" ; 
fi