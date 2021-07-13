#!/bin/bash
# script_arguments.sh

# '$0' shows the name of the script.
printf "The script is: %s\n" "$0"

# '$#' shows the number of arguments.
printf "The number of arguments is: %d\n" "$#"

# '$*' shows a list with the arguments.
printf "The arguments list is: %s\n" "$*"

# '$@' shows all arguments as an array.
printf "The arguments as an array are: %s\n" "$@"

fname="$1"
lname="$2"

printf "First: %s Last: %s\n" "$fname" "$lname"
