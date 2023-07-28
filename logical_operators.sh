#!/bin/bash
# Logical operators

# && - Logical AND
# || - Logical OR
# !  - Logical NOT

a=10
b=20
c=30 

# Logical AND operation
if [[ "$a" -eq 10 && "$b" -eq 20 && "$c" -eq 30 ]]; then
    echo "1: True"
else
    echo "1: False"
fi

# Logical OR operation
if [[ "$a" -eq 100 || "$b" -eq 20 ]]; then
    echo "1: True"
else
    echo "1: False"
fi

# Logical NOT operation
if ! [[ "$a" -eq 100 || "$b" -eq 20 ]]; then
    echo "1: True"
else
    echo "1: False"
fi

# Logical Not operation
if (( !(a == 10) )); then
    echo "1: True"
else
    echo "1: False"
fi

# Logical AND operation
if (( (a == 11) && (b == 20) )); then
    echo "1: True"
else
    echo "1: False"
fi


