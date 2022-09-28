#!/bin/bash

# Load the user defined parameters
while [[ $# -gt 0 ]]
do
    case "$1" in
        -a| --valueA)
            valA="$2"
            shift
        ;;
        
        -b| --valueB)
            valB="$2"
            shift
        ;;
        
        --help|*)
            echo "Usage:"
            echo "  --valueA \"value\""
            echo "  --valueB \"value\""
            echo "  --help"
            exit 1
        ;;
    esac
    shift
done

echo "A: $valA"
echo "B: $valB"