#!/bin/bash
# named_function_with_params.sh

# Example usage:
# namedFunc -f
# namedFunc -t 10
# namedFunc -f --tail 10
# namedFunc --follow --tail 10

namedFunc() {
    while [[ "$#" -gt 0 ]]
    do
        case $1 in
            -f|--follow)
                local FOLLOW="following"
            ;;
            -t|--tail)
                local TAIL="tail=$2"
            ;;
        esac
        shift
    done
    
    echo "FOLLOW: $FOLLOW"
    echo "TAIL: $TAIL"
}