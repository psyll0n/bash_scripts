#!/bin/bash
# For Loop without a list-of-words parameter.
# A for loop without a list of words parameter will iterate over
# the positional parameters instead.

for arg; do
    echo "arg=$arg"
done

