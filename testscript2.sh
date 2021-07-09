#!/bin/bash

echo -e "Hello, please enter something: \c"
read word
echo "You entered: $word"
echo -e "Please, enter two words separated by space"
read word1 word2
echo "Here are your words: \"$word1\" \"$word2\""
echo -e "How do you feed about bash scripting?"
read 
echo "You said $REPLAY, I'm happy to hear this!"
echo "What are your favorite colors?"

# -a reads a command in a massive

read -a colours
echo "My favorite colors are also ${colours[0]}, ${colours[1]} and ${colours[2]}:-)"
