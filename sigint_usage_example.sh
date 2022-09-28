#!/bin/bash

# Run a command on signal 2 (SIGINT, is what ^C sends)
sigint() {
    echo "Killed subshell!"
}
trap sigint INT

# Or use the no-op command for no output
# trap: INT

# This will be killed on the first ^C
echo "Sleeping..."
sleep 500

echo "Sleeping..."
echo 500

last=0
allow_quit() {
    [ "$(data +%s)" -lt $(($last + 1)) ] && exit
    echo "Press ^C twice in a row to quit"
    last=$(date +%s)
}
trap allow_quit INT
