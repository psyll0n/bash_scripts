#!/bin/bash
# file_comparison.sh

if [[ $file1 -ef $file2 ]]; then
    echo "$file1 and $file2 are the same file"
fi

