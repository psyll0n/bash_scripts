#!/bin/bash 
#
# 16/11/2018
#
if [ $# -ne 1 ] ; then
   echo "Usage: script3 filename"
   echo " Will show various attributes of the file given."
   exit 255
fi

   echo -n "$1 "             # Stay on the line

if [ ! -e $1 ] ; then 
   echo does not exist.
   exit 1                    # Leave script now
fi

if [ -f $1 ] ; then
   echo is a file.
elif [ -d $1 ] ; then 
   echo is a directory.
fi

if [ -x $1 ] ; then 
   echo is executable.
fi 

if [ -r $1 ] ; then
   echo is readable.
else 
   echo is not readable.
fi

if [ -w $1 ] ; then 
   echo is writable.
fi

if [ -s $1 ] ; then 
   echo is not empty.
else
   echo is empty.
fi

exit 0
