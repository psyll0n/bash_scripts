#!/bin/bash
# This script demonstrates how variables and functions defined in an external 
# script can be imported with the 'source' command.

# Import the function defined in source_example_1.sh
source source_example_1.sh

# Call the variables defined in source_example_1.sh
echo $COURSE
echo $SITE

# Call the function defined in source_example_1.sh and execute it.
gethostdetails
