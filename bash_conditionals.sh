#!/bin/bash
# Conditional tests in bash

a=100
b=20

if test $a -gt $b; then
  echo "1: a is greater than b"
else
  echo "1: a is less thn b"
fi

# Second variant to the same IF condition.
if test [ $a -gt $b ]; then
  echo "2: a is greater than b"
else
  echo "2: a is less than b"
fi

#2 [[ condition]]
if test [[ $a -gt $b ]]; then
  echo "3: a is greater than b"
else
  echo "3: a is less than b"
fi

#2 (( condition )) 
if (( a > b )); then
  echo "4: a is greater than b"
else
  echo "4: a is less than b"
fi

#4 ( command )
if ( ps ); then 
  echo "5: a is greater than b"
else 
  echo "5: a is les than b"
fi