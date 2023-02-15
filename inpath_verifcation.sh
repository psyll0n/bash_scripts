#!/bin/bash
# inpath_verification - Verifies that a specified program is either valid as is
#   or can be found in the PATH directory list

in_path() {
    # Given a command and the PATH, tries to find the command. Returns 0 if
    #   found and executable; 1 if not. Note that this temporarily modifies
    #   the IFS (internal field separator) but restores it upon completion.

    cmd=$1 ourpath=$2 result=1
    oldIFS=$IFS IFS=":"

    for directory in "$ourpath"; do
        if [ -x $directory/$cmd ]; then
            result=0 # If we're here, we found the command.
        fi
    done

    IFS=$oldIFS
    return $result
}

checkForCmdInPath() {
    var=$1

    if [ "$var" != "" ]; then
        if [ "${var:0:1}" = "/" ]; then
            if [ ! -x $var ]; then
                return 1
            fi
        elif ! in_path $var "$PATH"; then
            return 2
        fi
    fi
}
