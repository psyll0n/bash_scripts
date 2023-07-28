#!/bin/bash 
# File test operators.

# Check if a file exists.
if [[ -a /etc/passwd ]]; then
   echo "1: The file exists!"
else
   echo "1: The file was not found!"
fi

if [[ -f /etc/passwd ]]; then
   echo "2: The file exists!"
else
   echo "2: The file was not found!"
fi

# Check if a file exists and is NOT empty.
if [[ -s ./myfile.txt ]]; then
   echo "3: The file exists and it is not empty!"
else
   echo "3: The file was not found or it is empty!"
fi

# Check if a directory exists.
if [[ -d /etc/ ]]; then
   echo "4: The directory exists!"
else
   echo "4: The directory was not found!"
fi

# Check if you have permissions for a particular file.
# r, w, x
if [[ -w /etc/passwd ]]; then
   echo "5: You have write permissions for this file!"
else
   echo "5: You do not have write permissions for this file!"
fi

# Check if you are the owner/group for a particular file. 
if [[ -O /etc/passwd ]]; then
   echo "6: You are the owner of the file!"
else
   echo "6: You are not the owner of the file!"
fi

# Check if you belong to the group for a particular file. 
if [[ -G /etc/passwd ]]; then
   echo "7: You are a member of the group this file belongs to!"
else
   echo "7: You are not a member of the group this file belongs to!"
fi

# Check if a file is newer.
if [[ /etc/passwd -nt ./passwd.txt ]]; then
   echo "8: The file is newer"
else
   echo "8: The file is older!"
fi


# Check if a file is older.
if [[ /etc/passwd -ot ./passwd.txt ]]; then
   echo "9: The file is older"
else
   echo "9: The file newer!"
fi
