#!/bin/bash
# greet_function.sh

greet() {
    local name="$1"
    echo "Hello, $name"
}

greet "John Doe"



