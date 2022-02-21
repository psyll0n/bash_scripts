#!/bin/bash
# conditional_expr_primer.sh


if [[ -e $filename ]]
then
    echo "File $filename exists."
else
    echo "File $filename does not exist."
fi