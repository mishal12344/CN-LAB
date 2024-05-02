#!/bin/bash

echo "Enter the coefficients of the quadratic equation (a, b, c):"
read a b c

# Calculate the discriminant
delta=$((b*b - 4*a*c))

# Check the nature of roots based on discriminant
if [ $delta -gt 0 ]; then
    root1=$(echo "scale=2; (-$b + sqrt($delta)) / (2*$a)" | bc)
    root2=$(echo "scale=2; (-$b - sqrt($delta)) / (2*$a)" | bc)
    echo "Roots are real and different."
    echo "Root 1 = $root1"
    echo "Root 2 = $root2"
elif [ $delta -eq 0 ]; then
    root=$(echo "scale=2; -$b / (2*$a)" | bc)
    echo "Roots are real and identical."
    echo "Root = $root"
else
    real_part=$(echo "scale=2; -$b / (2*$a)" | bc)
    imaginary_part=$(echo "scale=2; sqrt(-$delta) / (2*$a)" | bc)
    echo "Roots are complex and conjugates."
    echo "Root 1 = $real_part + $imaginary_part i"
    echo "Root 2 = $real_part - $imaginary_part i"
fi
