#!/bin/bash
# bash_indirection.sh

argtester () { for (( i=1; i<="$#"; i++ )); do echo "${i}"; done; }; argtester -ab -cd -ef

argtester () { for (( i=1; i<="$#"; i++ )); do echo "${!i}";done; }; argtester -ab -cd -ef


