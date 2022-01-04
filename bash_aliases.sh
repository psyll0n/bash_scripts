#!/bin/bash -li

# Aliases are named shortcuts of commands, one can deﬁne and use in interactive
# bash instances. They are held in an associative array named BASH_ALIASES. To use
# this var in a script, it must be run within an interactive shell
#
# note the -li above! -l makes this behave like a login shell
# -i makes it behave like an interactive shell
#
# shopt -s expand_aliases will not work in most cases


echo There are ${#BASH_ALIASES[*]} aliases defined.

for ali in "${!BASH_ALIASES[@]}"; do
    printf "alias: %-10s triggers: %s\n" "$ali" "${BASH_ALIASES[$ali]}"
done