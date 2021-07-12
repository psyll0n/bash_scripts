#!/bin/bash
# create_directory.sh - Prompts for directory name. Checks if a directory with the 
# specified name already exists and if it does, then creates it.

declare -l DIR

echo -n "Enter a name of the directory to create: "
read -r DIR

if [[ -e $DIR ]]
    then echo "A file exists with the name $DIR"
    exit 1
    else
        if [[ -w $PWD ]]
            then
                mkdir $DIR
            else
                echo "You cannot create $DIR within $PWD"
                exit 2
        fi
fi