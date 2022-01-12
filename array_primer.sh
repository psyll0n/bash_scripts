#!/bin/bash
# array_primer.sh

while read -r; do
    # array+=("$REPLY") # Array append.
    # Assignment by index.
    array[$i]="$REPLY"
    let i++                 # Increment index.
done < <(seq 1 10)          # Command substitution.

# Array print.
echo "${array[@]}"

# Array print starting from index 4.
echo "${array[@]:3}"

# Array print starting from index -1.
echo "${array[@]:-1}"

# Array print starting from index 1 and ending at index 3.
echo "${array[@]:1:3}"

# Modify 10th element.
array[9]="element_ten"

# Print 10th element.
echo "${array[9]}"

# Print the entire array.
echo "${array[@]}"

# Array append to the end of the array.
array+=('1st_appended_element' '2nd_appended_element')

# Print the entire array.
echo "${array[@]}"

# Define a new array.
arr=(a b c d e f g)

# Delete array index 2.
unset -v 'arr[1]'

# Print the entire array after deletion.
echo "${arr[@]}"

# Merge two arrays.
array3=("${arr[@]}" "${array[@]}")

# Print the entire array after the merge.
echo "${array3[@]}"