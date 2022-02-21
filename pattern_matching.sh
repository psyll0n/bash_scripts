#!/bin/bash
# pattern_matching.sh

string='abc'
pattern1='a*'
pattern2='x*'

if [[ "$string" == $pattern1 ]]; then
    # The test is true
    echo "The string $string matches the pattern $pattern"
fi
if [[ "$string" != $pattern2 ]]; then
    # The test is false
    echo "The string $string does not match the pattern $pattern"
fi

