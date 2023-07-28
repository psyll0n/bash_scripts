#!/bin/bash
# var_length.sh

# Length of a string.
var='0123456789'
echo "Length of var is ${#var}"


# Number of array elements.
array=(1 2 3 4 5 6 7 8 9 10)
echo "${#array[@]}"

# Works for positional parameters too.
set -- 1 2 3 4 5 6 7 8 9 10
echo "${#@}"

# More commonly one would use.
echo "$#"

# Replace pattern in a string
# First match only.
a='I am a string'
echo "${a/a/A}"

# All matches.
echo "${a//a/A}"
# I Am A string

# Match at the beginning of a string.
echo "${a/#I/y}"
# Prints "y am a string"

# Match at the end of a string.
echo "${a/%g/N}"
# Prints "I am a strin"

# Replace a pattern with a nothing.
echo "${a/g/}"

# Add prefix to array elements.
A=(hello world)
echo "${A[@]/#/R}"



