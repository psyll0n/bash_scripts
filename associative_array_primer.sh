#!/bin/bash
# associative_array_primer.sh

# Declaring an associative array before initialization or use is mandatory.
# Declare an associative array.
declare -A aa

# You can also initialize an entire associative array in a single statement:
aa=([hello]=world [ab]=cd ["key with spaces"]="hello world")

# Access an associative array element.
echo ${aa[hello]}

# Listing associative array keys.
echo "${!aa[@]}"

# Iterate over associative array keys and values.
for key in "${!aa[@]}"; do
    echo "Key: ${key}"
    echo "Value: ${aa[$key]}"
done

# Count the number of associative array elements.
echo "Number of elements: ${#aa[@]}"

# Looping through an array.
arr=(a b c d e f g)

for i in "${arr[@]}"; do
    echo $i
done

# Using C-style for loop.
for ((i=0; i<${#arr[@]}; i++)); do
    echo ${arr[$i]}
done

# Using while loop.
i=0

while [ $i -lt ${#arr[@]} ]; do
    echo ${arr[$i]}
    i=$((i+1))
done

# Using while loop with numerical conditional.
i=0

while (( $i < ${#arr[@]} )); do
    echo ${arr[$i]}
    i=$((i+1))
done

# Using an until loop.
i=0

until [ $i -ge ${#arr[@]} ]; do
    echo ${arr[$i]}
    i=$(( i+1 ))
done

# Using an until loop with numerical conditional.
i=0

until (( $i >= ${#arr[@]} )); do
    echo "${arr[$i]}"
    (( i++ ))
done

# Array from string
stringVar="Apple Orange Banana Mango"

# Each space in the string denotes a new item in the resulting array.
arrayVar=(${stringVar// / })

echo "${arrayVar[0]}" # Will print Apple
echo "${arrayVar[3]}" # Will print Mango

# Similarly, other characters can be used as delimiters.
stringVar="Apple+Orange+Banana+Mango"
arrayVar=(${stringVar//+/ })

echo ${arrayVar[1]} # Will print Orange
echo ${arrayVar[2]} # Will print Banana


