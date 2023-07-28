#!/bin/bash
# bash_functions2.sh - Demonstrates the use of local and global variables in Bash functions.

my_func() {
    echo "I was called as : $@"
    x=2
}

### Main script starts here.
echo "Script was called with $@"
x=1
echo "x is $x"
my_func 1 2 3
echo "x is $x"

