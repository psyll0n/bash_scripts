#!/bin/bash
#
#
# 02-08-2019


# Subroutines

cls()
{ 
	tput clear
	return 0
}

home ()
{
	tput cup 0 0 
	return 0
}

end()
{
	let x=$COLUMNS-1
	tput cup $LINES $x
	echo -n "X"			# No newline or else will scroll
}

bold()
{
	tput smso
}

unbold()
{
	tput rmso
}

underline()
{
	tput smul
}

normalline()
{
	tput rmul
}

move()					# move cursor to row, col
{
	tput cup $1 $2
}

movestr()				# move cursor to row, col
{ 
	tput cup $1 $2
	echo $3
}




# Code starts here

rc=0					# return code
if [ $# -ne 1 ]; then 
	echo "Usage: script_name.sh parameter"
	echo "Where parameter can be: "
	echo "home		- put an X at the home position"
	echo "cls		- clear the terminal screen"
	echo "end		- put an X at the last screen position"
	echo "bold		- bold the following output"
	echo "underline       - underline the following output"
	echo "move		- move cursor to row, col"
	echo "movestr		- move cursor to row, col and output string"

	exit 255
fi

parm=$1					# main parameter 1


if [ "$parm" = "home" ]; then
	echo "Calling subroutine home."
	home
	echo -n "X"
elif [ "$parm" = "cls" ]; then
	cls
elif [ "$parm" = "end" ]; then
	echo "Calling subroutine end."
	end
elif [ "$parm" = "bold" ]; then 
	echo "Calling subroutine bold."
	bold
	echo "After calling subroutine bold."
	unbold
	echo "After calling subroutine unbold."
elif [ "$parm" = "underline" ]; then
	echo "Calling subroutine underline."
	underline
	echo "After subroutine underline." 
	normalline
	echo "After subroutine normalline."
elif [ "$parm" =  "move" ]; then
	move 10 20
	echo "This line started at row 10 col 20"
elif [ "$parm" = "movestr" ]; then
	movestr 15 40 "This line started at 15 40" 
else
	echo "Unknown parameter: $parm"
	rc=1
fi

exit $rc

