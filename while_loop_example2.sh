#!/bin/bash
# While loop bash example.

i=0

while [ $i -lt 10 ]; do
    echo "i is currently: $i"
    i=$((i+1))
done

