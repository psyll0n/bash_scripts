#!/bin/bash
# Customizing the shell environment.

# Changes the prompt to display hostname and username in the shell prompt.
PS1="\u@\h $"

# Changes the prompt to display hostname and username and time in the shell prompt.
PS1="\u@\h (\t)$"   # 24-hour format
PS1="\u@\h (\T)$"   # 12-hour format

# Changes the prompt to display hostname and username and date in the shell prompt.
PS1="\u@\h (\d)$"

# Changes the prompt to display hostname and username, shell type and version in the shell prompt.
PS1="\u@\h (\s-\v)$"

# Changes the prompt to display hostname and username and working directory in the shell prompt.
PS1="\u@\h (\w)$"

# The PS2 variable can be used to specify the sign displayed when a multiline string or lines are entered at the prompt.
PS2="Cont..>"