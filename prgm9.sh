#!/bin/bash

echo "Enter a number:"
read number

# Function to check if a number is prime
is_prime() {
    n=$1
    if [ $n -le 1 ]; then
        echo "$n is not a prime number."
        exit
    fi

    i=2
    while [ $i -le $((n / 2)) ]; do
        if [ $((n % i)) -eq 0 ]; then
            echo "$n is not a prime number."
            exit
        fi
        i=$((i + 1))
    done

    echo "$n is a prime number."
}

# Call the function with the given number
is_prime $number

