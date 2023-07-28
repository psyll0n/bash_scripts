#!/bin/bash
# insert_array_value.sh - Inserting a value into an array.

insert(){
    h='
    ################## insert ########################
    # Usage:
    # insert arr_name index element
    #
    # Parameters:
    # arr_name: Name of the array variable
    # index: Index to insert at
    # element: Element to insert
    ##################################################
    '

    [[ $1 = -h ]] && { echo "$h" >/dev/stderr; return 1; }
    declare -n __arr__=$1

    # reference to the array variable
    i=$2

    # index to insert at
    el="$3"
    
    # element to insert

    # handle errors
    [[ ! "$i" =~ ^[0-9]+$ ]] && { echo "E: insert: index must be a valid integer" >/dev/stderr;
    return 1; }

    (( $1 < 0 )) && { echo "E: insert: index can not be negative" >/dev/stderr; return 1; }
    # Now insert $el at $i
    __arr__=("${__arr__[@]:0:$i}" "$el" "${__arr__[@]:$i}")

}
