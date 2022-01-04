#!/bin/bash

# Replaces the file extension with the user one supplied by the user.
# Usage: rename.sh filename extension
# Example: ./change_file_ext.sh tesffile.txt sh


filename=${1:?Please enter the filename}
extension=${2:?Please enter the extension}
filenameonly=${filename%%.*}
timestamp=$(date +%Y%m%d)


mv $filename ${filenameonly}.${extension}.${timestamp}







