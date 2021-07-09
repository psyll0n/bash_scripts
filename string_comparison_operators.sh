#!/bin/bash 
# String comparison operators 
# = Equal to
# != Not equal to
# -z Check if string is zero
# -n Check if string is not null


string1="ubuntu"
string2="Linux"
string3=""

if [[ "string1" = "ubuntu" ]]; then
  echo "True"
else 
  echo "False"
fi

if [[ "string1" != "Linux" ]]; then
  echo "True"
else 
  echo "False"
fi

# Check if a string is zero
if [[ -z "string1" ]]; then
  echo "True"
else 
  echo "False"
fi

# Check if string1 is not 'null'
if [[ -n "string1" ]]; then
  echo "True"
else 
  echo "False"
fi