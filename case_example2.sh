#!/bin/bash

case "$BASH_VERSION" in
    [34]*)
        echo {1..4}
    ;;
    *)
        seq -s" " 1 4
esac