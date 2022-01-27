#!/bin/bash

getFunc() {
    declare -f "$@"
}

function func(){
    echo "I am a sample function"
}

funcd="$(getFunc func)"
getFunc func 

# or echo "$funcd"
echo "$funcd"