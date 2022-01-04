#!/bin/bash

# 'set' - sets local variables only. Does not set shell nor environment variables.
# 'env' - can set environment variables for a single command
# 'declare' - sets shell variables
# 'export' - makes shell variables environment variables.

env | grep myvar

declare myvar="Python"

# displays all shell variables similarly to the 'env' command.
declare -p | grep myvar

# declares a shell variable which is an integer.
declare -i myvar1=12345

# Export a shell variable
declare -x myvar1

env | grep myvar1

# declares a readonly shell variable.
declare -r myvar2="GO"
env | grep myvar2 

# declares a shell variable in lower case letters.
declare -l myvar3="PARIS"
declare -p | grep myvar3

# declares a shell variable in upper case letters.
declare -u myvar4="portugal"
declare -p | grep myvar4