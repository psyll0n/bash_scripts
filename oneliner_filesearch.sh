#!/bin/bash 

# Search for all files with size less than 100 KB which contain .sh in their name and 
# add the output of the search results to out_file.txt


for i in { find -type f -size -100k -iname "*.sh" };

do

chmod u+x * 

done

if [ "$?" -eq "0" ]

then

	echo "The files are now executable" 
fi

	

