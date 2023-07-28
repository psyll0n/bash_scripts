#!/bin/bash
# four_seasons.sh - Checks the season of the year by using a case. 

declare -l month=$(date +%b)

case $month in
    dec | jan | feb ) 
        echo "Winter" ;;

    mar | apr | may )
        echo "Spring" ;;
    
    jun | jul | aug )
        echo "Summer" ;;

    sep | oct | nov ) 
        echo "Autumn" ;;
esac


