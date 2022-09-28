#!/bin/bash
# Trap usage example. One of the most common uses of trap is to clean up 
# temporary ﬁles on both an expected and unexpected exit.

# Make cleanup function
cleanup() {
    rm --force --"${tmp}"
}

# Trap the special "EXIT" group, which is always run when the shell exits.
trap cleanup EXIT

# Create a temporary file
tmp="$(mktemp -p /tmp tmpfileXXXXXXX)"

echo "Hello, world!" >> "{tmp}"

# No rm -f "$tmp" needed. The advantage of using EXIT is that it still works
# even if there was an error or if you used exit.

