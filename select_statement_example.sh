#!/bin/bash

PS3="Your choice? "

select s in "Print loginid" "Change password" "Exit"; do
case $s in

	*loginid )
		echo "Yourlogin ID is " $(id -u)
		break ;;
	*password )
		passwd
		break ;;
	Exit )
		break ;;
	* )
		echo "Invalid selection"
	esac
done
