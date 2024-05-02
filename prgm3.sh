#!/bin/bash
#author:Tesmol shaji
echo "Enter the radius of the circle:"
read radius

# Calculate area
area=$(echo "scale=2; 3.14 * $radius * $radius" | bc)

# Calculate circumference
circumference=$(echo "scale=2; 2 * 3.14 * $radius" | bc)

echo "Area of the circle with radius $radius is: $area"
echo "Circumference of the circle with radius $radius is: $circumference"
