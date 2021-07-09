#!/bin/bash 
# The variables and functions defined in this script will be loaded in source_example_2.sh 
# with the the 'source' command.

COURSE="BASH Shell Scripting"
SITE="morhadron.tech"

function gethostdetails {
    hostname
    ifconfig | grep -v inet6 | grep inet | awk '{print $2}' | grep -v ^127
}

