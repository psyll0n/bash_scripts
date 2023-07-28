#!/bin/bash
# function_vars_example.sh

animal="Dog"

echo "1: he animal is (before the function): $animal"

function function1 {
    local animal="Tiger"
    echo "2: The animal is (inside the function): $animal"
}

function1

echo "3: The animal is (after the function): $animal"