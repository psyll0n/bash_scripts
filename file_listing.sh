#!/bin/bash 
# file_listing.sh - Lists only the files in a particular directory. 
# The script ignores directories


for file in $(ls) ; do 
    if [[ -d $file ]] ; then 
        continue
    fi 

    echo $file
done

echo ".........................................................."
echo "Beginning the one-liner 'for' loop for the files found."
echo ".........................................................."


# One-liner 'for' loop performing the same function, and printing out the file type.
for file in $(ls) ; do if [[ -d $file ]] ; then continue ; fi ; stat -c "%n %F" $file ; done