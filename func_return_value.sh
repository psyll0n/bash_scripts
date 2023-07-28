#!/bin/bash
# func_return_value.sh

# Example usage:
# ❯ source func_return_value.sh
# ❯ var="$(funcReturn)"
# ❯ echo $var
# Output: Sampe Value to be Returned


funcReturn() {
    local var="Sampe Value to be Returned"
    echo $var
    #printf "%s\n" "$var"
}

var="$(funcReturn)"