#!/bin/bash

read -p "Enter the string to exclude: " exclude_string
read -p "Enter the input filename: " input_filename
read -p "Enter the output filename: " output_filename

# Count the number of characters, lines, and words in the input file
char_count=$(wc -c < $input_filename)
line_count=$(wc -l < $input_filename)
word_count=$(wc -w < $input_filename)

# Copy the input file to the output file, excluding lines that contain the exclude string
grep -v "$exclude_string" $input_filename > $output_filename

echo "Original file stats:"
echo "Number of characters: $char_count"
echo "Number of lines: $line_count"
echo "Number of words: $word_count"

