#!/bin/bash 

n1=20
n2=30

sum="$(expr $n1 + $n2)"

printf "Sum of two numbers is %d\n" "$sum"
printf "Sum of two numbers is %.2f\n" "$sum"