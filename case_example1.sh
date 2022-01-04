#!/bin/bash
# case_example1.sh - An example usage of 'case' in BASH. The 'case' statement is more efficient
# than many 'elif' statements.

case $USER in 
    psyll0n )
        echo "You are cool!"
        ;;

    root )
        echo "You are the boss!"
        ;;
esac