#!/bin/bash

# Usage: Having executed the script on the CLI, type checkmem on the bash CLI to check what 
# is the amount of free memory on the system

function checkmem() 

{ echo -n "The amount of free memory is "; free -h | head -n +2 | tail -1 | awk '{print $4}'; }







