#!/bin/bash

#  tput cup <row><col>			moves the cursor to row, col
#  
#  tput cup 0 0 			moves the cursor to the upper left-hand side
#
#  tput cup $LINES $COLUMNS  		moves the cursor to the bottom right-hand side
#  
#  tput clear				clears the terminal screen
#
#  tput smso				bolds the text that follows
#
#  tput rmso 				un-bolds the text that follows


# Subroutines

sub1()
{
	echo "Entering sub1" 
	rc1=0				# Default return code is no error

	if [ $# -ne 1 ]; then
		echo "sub1 requires 1 parameter"
		rc1=1			# Set error condition
	else
		echo "1st parm: $1"
	fi

	echo "Leaving sub1" 
	return $rc1			# routine return code
}

sub2()
{
	echo "Entering sub2"
	rc2=0				# default is no error
	if [ $# -ne 2 ]; then
		echo "sub2 requires 2 parameters"
		rc2=1 			# set error condition
	else
		echo "1st parm: $1"
		echo "2nd parm: $2"
	fi
	echo "Leaving sub2"
	return $rc2			# routine return code
}

sub3()
{
	echo "Entering sub3"
	rc3=0				# default is no error
	if [ $# -ne 3 ]; then
		echo "sub3 requires 3 parameters"
		rc3=1			# set error condition
	else
		echo "1st parm: $1"
		echo "2nd parm: $2"
		echo "3rd parm: $3"
	fi
	echo "Leaving sub3"
	return $rc3			# routine return code
}
	


cls()
{ 
	tput clear
	return 0
}



causeanerror()
{
	echo "Entering causeanerror"
	tput firephasers
	return $?			# return code from tput
}


# Code starts here

cls
rc=$?

echo "return code from cls: $rc"
rc=0					# reset the return code

if [ $# -ne 3 ]; then
	echo "Usage: script_name.sh parameter1 parameter2 parameter3" 
	echo "Where all parameters are simple strings."
	exit 255
fi

parm1=$1				# main parameter 1
parm2=$2				# main parameter 2
parm3=$3				# main parameter 3


# show main parameters

echo "parm1: $parm1 parm2: $parm2 parm3: $parm3"

sub1 "sub1-parm1"
echo "return code from sub1: $?"

sub2 "sub2-parm1"
echo "return code from sub2: $?"

sub3 $parm1 $parm2 $parm3
echo "return code from sub3: $?"

causeanerror
echo "return code from causeanerror: $?"

exit $rc



