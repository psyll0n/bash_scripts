#!/bin/bash
#
# math practice in bash
#
# 02/12/2018
#

no1=4

no2=5

let result=no1+no2

echo $result


no3=25

no4=56

let result=$[ no3 + no4 ]

echo $result


result=$[ $no4 + 11 ]

echo $result


result=$(( no3 - 8 ))

echo $result



