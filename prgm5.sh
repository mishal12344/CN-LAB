#author:Thasni Noufal
#!/bin/bash
echo "Enter a string:"
read input_string
clean_string=$(echo "$input_string" | tr -d ' ' | tr '[:upper:]' '[:lower:]')
reverse_string=$(echo "$clean_string" | rev)
if [ "$clean_string" = "$reverse_string" ]; then
    echo "The string '$input_string' is a palindrome."
else
    echo "The string '$input_string' is not a palindrome."
fi
