#!/bin/bash
#
#
# 02-08-2019

linecnt=1					# line counter
loop=0						# loop control variable
LINES=25

while [ $loop -eq 0 ] 
do
	echo "$linecnt $RANDOM"			# display next random number
	let linecnt++	
	if [ $linecnt -eq $LINES ]; then
		linecnt=1
		echo -n "Press Enter to continue or q to quit: "
		read str			# pause
		if [ "$str" = "q" ]; then
			loop=1			# end the loop
		fi
	fi
done

echo "End of script"
exit 0 
