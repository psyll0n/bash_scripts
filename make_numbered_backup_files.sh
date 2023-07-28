#!/bin/bash
#
# 02-08-2019
#
# The script created numbered backup files. 

if [ $# -eq 0 ]; then
	echo "Usage: script_name.sh filename(s)" 
	echo " Will make a numbered backup of the file(s) given."
	echo " Files must be in the current directory."

	exit 255
fi

rc=0 					 	# return code, default is no error

for fn in $*   				 	# for each filename given on the command line
do
	if [ ! -f $fn ]; then 		 	# if not found, then...
		echo "File $fn not found."      
		rc=1				# One or more files were not found
	else
		cnt=1				# file counter
		loop1=0
		while [ $loop1 -eq 0 ] 
		do
			tmp=bak-$cnt.$fn
			if
				[ ! -f $tmp ]; then
				cp $fn $tmp
				echo "File "$tmp" created."
				loop1=1		# End of inner loop
			else
				let cnt++ 	# try the next one
			fi 
		done
	fi
done
exit $rc					# exit with return code



