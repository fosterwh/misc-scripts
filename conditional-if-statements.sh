#!/bin/bash
# Simple script to learn bash conditionals
# and if statements.

echo "Type one of the following"
echo "1 - whoami"
echo "2 - df"
echo "3 - date"
echo "4 - cal"

# capture the input as a variable
script_input=$(head -n1)

# This is the actual logic of the script
# we'll use if / then / elif / else logic here
# we will replace the bottom line logic with some
# other approach like using a case statement instead
# if we want to use another way to accomplish the goal
# at hand.
if [ $script_input = "1" ]; then
    whoami
elif [ $script_input = "2" ]; then
    df
elif [ $script_input = "3" ]; then
    date
elif [ $script_input = "4" ]; then
    cal
else
    echo "You didn't pick a valid answer of 1 through 4"
fi

