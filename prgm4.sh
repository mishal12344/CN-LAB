#!/bin/bash

echo "Enter a number:"
read number

# Reverse the number
reverse=$(echo $number | rev)

# Check if the number and its reverse are the same
if [ "$number" = "$reverse" ]; then
    echo "The number $number is a palindrome."
else
    echo "The number $number is not a palindrome."
fi


