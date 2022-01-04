#!/bin/bash


order=''
count=5
outfile=''


while getopts "hln:o:" opt; do
	case $opt in
		h ) ;;
		l ) order='-r'
		    ;;
		n ) if [[ -n $(echo $OPTARG | grep '^[1-9]$') ]]; then
			count=$OPTARG
		else
			echo "Invalid count value"
			echo $usage
			exit 1
		fi
		    ;;
	        o ) if [[ -n $(echo "$OPTARG" | grep '^[a-zA-Z.]*$') ]]; then
			outfile=$OPTARG
		else
			echo "Outfile should contain only uppercase, lowercase letters or dots"
			echo $usage
			exit 1
		fi
	            ;;
		\? ) echo "Invalid option"
		     echo $usage
		     exit 1
     esac
done

shift $(($OPTIND -1))
filename=${1:?Please enter the filename}
result=$(sort -n $order $filename | tail -$count)
if [ -n "$outfile" ]; then
	echo "$result" > $outfile
else
	echo "$result"
fi
