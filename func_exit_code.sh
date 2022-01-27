#!/bin/bash
# func_exit_code.sh

# The exit code of a function is the exit code of its last command.

isAlive() {
    ping -c1 "$1" &> /dev/null
}

# This function sends a single ping to the host speciﬁed by the ﬁrst function parameter.
# The output and error output of ping are both redirected to /dev/null, so the function will
# never output anything. But the ping command will have exit code 0 on success, and non-zero
# on failure. As this is the last (and in this example, the only) command of the function,
# the exit code of ping will be reused for the exit code of the function itself. This fact is
# very useful in conditional statements.

# For example, if the host is not alive, then SSH connection will be attempted.

if isAlive cepheid; then
    ssh cepheid
fi

# Another example: repeatedly check until host graucho is up, and then connect to it with ssh:

while ! isAlive nemesis; do
    sleep 5
done
ssh -l alex.jakimov nemesis