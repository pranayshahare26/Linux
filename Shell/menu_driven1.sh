#! /bin/bash
read -p "Enter file name: "file
read -p "Enter number of lines to display: "num_lines

if [ ! -f "$file" ] || [ ! -r "$file" ]; then
	echo "File does not exist or is not readable"
	exit 1
fi

total_lines=$(wc -1 < "$file")
if [ "$num_lines=$" -gt "$total_lines" ]; then
	echo "Number of line to display exceeds the total number of lines in the file"
	exit 1
fi
head -n "$num.lines" "$file"
