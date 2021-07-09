#!/bin/bash
#
# 02-08-2019
#
# Monitor a system process and get notified when it ends


echo "Begin process monitoring..."

if [ $# -ne 1 ]; then
	echo "Usage: script_name.sh process-directory"
	echo "For example: process_monitoring.sh /proc/20686"
	exit 255
fi

FN=$1                         # process directory i.e. /proc/20686
rc=1
while [ $rc -eq 1 ]
do 
	if [ ! -d $FN ]; then # if the directory specified is not there
		echo "Process $FN is not running or has been terminated"
		let rc=0 
	else
		date >> process_monitoring.log
		sleep 1
          echo "Monitoring process $FN..." >> process_monitoring.log 
		sleep 1
	fi
done

echo "End of Script"


