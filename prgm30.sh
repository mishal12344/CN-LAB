echo "Enter the filename:"

read filename


if [ ! -f "$filename" ]; then

echo "File not found!"

exit 1

fi


unique_words=$(awk '{ for (i=1; i<=NF; i++) print $i }' "$filename" | sort | uniq -c)


echo "Unique words and their occurrences in $filename:"

echo "$unique_words"


