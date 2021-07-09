#!/bin/bash

myvar="This is a global variable"
function myfunc {
	local myvar="This value is only seen inside the function"
	echo $myvar
}
myfunc
echo $myvar



