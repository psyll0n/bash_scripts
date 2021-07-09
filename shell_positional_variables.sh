#!/bin/bash
# Shell positional parameters / variables. 

echo "Usage: ./shell_positional_variables.sh <variable1> <variable2> <variable3> <variable4> <variable5> "

echo "1: $1"
echo "2: $2"
echo "3: $3"
echo "4: $4"
echo "5: $5"

# Displays the total number of arguments provided.
echo "Total number of arguments Passed: $#"

# $? - Gives the exit status of the last executed command.
echo "The exit status of the last executed command: "$?

# The PID of the current shell can be found with $$
echo "The PID of the current shell is: $$"

# '$*'' and "$@' examples...
set -- "arg  1" "arg  2" "arg  3"

for word in $*; do echo "$word"; done

for word in $@; do echo "$word"; done

for word in "$*"; do echo "$word"; done

for word in "$@"; do echo "$word"; done
