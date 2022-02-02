#!/bin/bash
# char_case_modifier.sh

# Modify the case of the characters in a string.
v="hello, world!"

declare -u string="$v"
echo "$string"

# To lowercase
v="HELLO WORLD!"

declare -l string="$v"
echo "$string"

# Toggle case of the chars in a string
v="Hello, World!"

# All chars
echo "${v~~}"

# First char
echo "${v~}"