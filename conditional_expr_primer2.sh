#!/bin/bash
# conditional_expr_primer2.sh

if [[ -f $filename ]]; then
    echo "$filename is a regular file"
    elif [[ -d $filename ]]; then
    echo "$filename is a directory"
    elif [[ -p $filename ]]; then
    echo "$filename is a named pipe"
    elif [[ -S $filename  ]]; then
    echo "$filename is a named socket"
    elif [[ -b $filename ]]; then
    echo "$filename is a block device"
    elif [[ -c $filename ]]; then
    echo "$filename is a character device"
fi
if [[ -L $filename ]]; then
    echo "$filename is a symbolic link (to any file type)"
fi