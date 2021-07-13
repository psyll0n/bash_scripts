#!/bin/bash
# getopts_example.sh - The builtin 'getopts' command allows for options to be passed to a script.

while getopts ':cd' opt
do
    while (( "$#" )) ; do
      if ! [[ $1  =~ ^- ]] ; then
        username=$1
      fi
      shift
    done
    case "$opt" in 
        c) sudo useradd -m "$username"
            break;;
        d) sudo userdel -r "$username"
            break;;
        *) echo "Usage: $0 [ -c | -d ] <username>" ;;
    esac 

done