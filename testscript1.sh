#!/bin/bash

VAR="This is a globally defined variable"
function var {
	#Decalaring of local variables
	local VAR="This is a locally defined variable"
	echo $VAR
}
echo $VAR
var
echo $VAR
