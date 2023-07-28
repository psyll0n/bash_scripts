#!/bin/bash
# filereader.sh - Reading an entire ﬁle into an array.

# Reading a file in a single step using read.
# The read command reads a line from the file and stores it in an array.
IFS=$'\n' read -r -a arr < file.txt


# Reading a file in a loop.
arr=()
while IFS= read -r line; do
    arr+=("$line")
done < file.txt


# Using a mapfile or readarray command to read a file into an array.
mapfile -t arr < file.txt
readarray -t arr < file.txt


# Looping through an array.
for i in "${arr[@]}"; do
    echo "$i"
done
