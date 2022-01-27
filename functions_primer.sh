#!/bin/bash
# functions_primer.sh

# For default values, use ${1:-default_val}:
foo() {
    local val=${1:-25}
    echo "$val"
}

# Call the function without any arguments:
foo

# Call the function with an argument:
foo 13

# To require an argument, use ${1:?error_message}:
bar() {
    local val=${1:?Must provide an argument}
    echo "$val"
}

bar "This is a value used with the bar function"

# Note that sourcing a ﬁle with functions makes them available in your current bash session.
# Use "$ source helloWorld.sh" to source the file or, more portably, ". helloWorld.sh"

# You can export a function in some shells, so that it is exposed to child processes.
# bash -c 'greet' - fails because greet is not defined in the current shell.
# export -f greet - exports the function greet to the current shell.
# bash -c 'greet' - succeeds because greet is now available in the current shell.

