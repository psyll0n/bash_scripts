#!/bin/bash

# The semantics for this are similar to that of default value siubstitution, but instead of substituting a default value, it
# errors out with the provided error message. The forms are ${VARNAME?ERRMSG} and ${VARNAME:?ERRMSG}. The form
# with : will error our if the variable is unset or empty, whereas the form without will only error out if the variable is
# unset. If an error is thrown, the ERRMSG is output and the exit code is set to 1.

# The run the full example above each of the erroring echo statements needs to be commented out to proceed.

FOO=

# ./script.sh: line 4: FOO: EMPTY
echo "FOO is ${FOO:?EMPTY}"
# FOO is
# echo "FOO is ${FOO?UNSET}"
# ./script.sh: line 8: BAR: EMPTY
# echo "BAR is ${BAR:?EMPTY}"
# ./script.sh: line 10: BAR: UNSET
# echo "BAR is ${BAR?UNSET}"
