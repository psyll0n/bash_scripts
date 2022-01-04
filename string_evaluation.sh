#!/bin/bash
#
# 24/11/2018
#
echo "string_evaluation.sh"

## string variables

str1="Kirk"
str2="Kirk"
str3="Spock"
str4="Engineer Scott"
str5="A"
str6="B"

echo str1=$str1 str2=$str2 str3=$str3 str4=$str4

if [ "$str1" = "$str2" ] ; then
	echo str1 equals str2
else
	echo str1 does not equal str2
fi

if [ "$str2" != "$str3" ] ; then
	echo str2 does not equal str3
else
	echo str2 equals str3
fi

if [ "$str3" = "$str4" ] ;  then
	echo str3 equals str4
else
	echo str3 does not equal str4
fi 

echo str5=$str5 str6=$str6

## must escape the ">" 

if [ "$str5" \> "$str6" ] ; then
	echo str5 is greater than str6 
else 
	echo str5 is not greater than str6
fi

## Or use double brackets for the same purpose

if [[ "$str5" < "$str6" ]] ; then
	echo str5 is less than str6
else
	echo str5 is not less than str6
fi

## Test if str1 is not null

if [ -n "$str1" ] ; then
	echo str1 is not null
fi

## Test if str7 is null

if [ -z "$str7" ] ; then
	echo str7 is null
fi

echo "End of script8"






