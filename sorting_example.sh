#!/bin/bash

#  Usage: sorting_example.sh filename [number]
#  Print the [number] of websites with the most hits. The [number]
#  defaults to 5 if a number is not specified.

filename=${1:?Please enter the filename}
count=${2:-5}
sort -n $filename | tail -$count


