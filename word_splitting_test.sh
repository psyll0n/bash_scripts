#!/bin/bash
set -x 

var='I am 
a 
multiline string'

fun() {
    echo "-$1-"
    echo "*$2*"
    echo ".$3."
}

fun $var