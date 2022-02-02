#!/bin/bash
# substrings_and_subarrays.sh

var='0123456789abcdef'

# Printout the string starting from the 4th character.
printf '{%s}\n' "${var:3}"

# Offset and length of the substring.
printf '{%s}\n' "${var:3:5}"

# Negative length counts from the end of the string.
printf '{%s}\n' "${var:3:-5}"

# Negative offset counts from the end of the string.
# Needs a space to avoid confusion with ${var:3:-5}.
printf '{%s}\n' "${var: -6}"

# Alternatively, parentheses can be used to specify the offset and length.
printf '{%s}\n' "${var:(-6)}"

# Negative offset and negative length.
printf '{%s}\n' "${var:(-6):(-5)}"

# The same expansions apply if the parameter is a positional parameter or the
# element of a subscripted array:

# Set positional parameter $1
set -- 0123456789abcdef

# Define offset
printf '{%s}\n' "${1:5}"

# Assign to array element
myArr[0]='0123456789abcdef'

# Define offset and length
printf '{%s}\n' "${myArr[0]:7:3}"

# Analogous expansions apply to positional parameters, where oﬀsets are one-based:
set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f

# Define an offset (beware $0 (not a positional parameter)
# is being considered here as well)
printf '{%s}\n' "${@:10}"

# Define an offset and length
printf '{%s}\n' "${@:10:3}"

# No negative lengths allowed for positional parameters.
printf '{%s}\n' "${@:10:-2}"
# The above produces an error.
# bash: -2: substring expression < 0

# Negative offset counts from the end.
# Needs a space to avoid confusion with ${@:10:-2}
printf '{%s}\n' "${@: -10:2}"

# ${@:0} is equivalent to $0 which is not otherwise a positional parameter or part of $@.
printf '{%s}\n' "${@:0:2}"

# Substring expansion can be used with indexed arrays.
# Create array (zero-based indeces)
myArray=(0 1 2 3 4 5 6 7 8 9 a b c d e f)

# Print elements with index 5 and higher
printf '{%s}\n' "${myArray[@]:12}"

# 3 elements starting from index 5
printf '{%s}\n' "${myArray[@]:5:3}"

# The last element of the array
printf '{%s}\n' "${myArray[@]:-1}"


# Bash indirection permits to get the value of a variable whose name is contained in another variable.
red="the color red"
green="the color green"

color=red
echo "${!color}"

color=green
echo "${!color}"

# Some more examples that demonstrate the indirect expansion usage:
foo=10
x=foo

echo ${x}

foo=10
x=foo
echo ${!x}

