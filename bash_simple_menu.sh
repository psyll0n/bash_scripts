#!/bin/bash
# bash_simple_menu.sh - Demonstrates how a menu can be built with 'while' loop and 'case' definitions.

function create_directory() {
    declare -l directory
    read -p "Enter a directory name: " directory
    mkdir "$directory"
}

while true ; do 
    clear
    echo "Choose from the menu below: "
    echo "1: List users."
    echo "2: Create a directory."
    echo "3: Quit"
    read -sn1
    case "$REPLY" in 
        1) who;; 
        2) create_directory;;\
        3) exit 0;;
    esac
    read -n1 -p "Press any key to continue"
done

