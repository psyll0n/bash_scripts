#!/bin/bash
# Variables in bash

# normwal variable
course_name="Bash Shell Scripting"

echo "1: Welcome to the course - ${course_name}"

# readonly varible example...
readonly course_name2="Mastering Linux Command Line"
course_name2="Python Scripting"

echo "2: Welcome to the course - ${course_name2}"


course_name3="AWS VPC"

# unset the value assigned to the the variable course_name3
unset course_name3
echo "3: Welcome to the course - ${course_name3}"

# set -u performs the same operation as unset.
# set -u
course_name4="Mastering SSH"
echo "4: Welcome to the course - ${course_name4}"


set +u
course_name5="Mastering VirtualBox"
echo "5: Welcome to the course - ${course_name5}"


# Global variables are declared with the 'export' command.
export course_name6="AWS VPC Mastery Course"

echo "Welcome to ${course_name6}!"


export C1=Bash
echo $C1

printenv | grep C1

export C2=Python
echo $C2

printenv | grep C2

# The environment varibles below are already defined in ~/.bashrc
echo "1: My home dir is - $HOME"
echo "2: My login id is - $LOGNAME"
echo "3: My shell is - $SHELL"
