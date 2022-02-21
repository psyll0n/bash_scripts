#!/bin/bash
# string_comparison.sh

if [[ "$string1" == "string2" ]]; then
    echo "\string1 and \$string2 are identical"
fi
if [[ "string1" != "string2" ]]; then
    echo "\$string1 and \$string2 are not identical"
fi

