#!/bin/bash

echo "Enter a number:"
read number

# Calculate the number of digits in the given number
num_digits=${#number}

# Initialize sum
sum=0

# Temporary variable to store the original number
temp=$number

# Calculate sum of digits raised to the power of the number of digits
while [ $temp -gt 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit ** num_digits))
    temp=$((temp / 10))
done

# Check if the number is an Armstrong number
if [ $sum -eq $number ]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi


