#!/bin/bash
echo "Enter the number for fibonacci series which you want "
read n

a=0
b=1

echo -n "$a $b "
for ((i=2;i<n;i++))
do
    c=$((a + b))
    echo -n "$c "
    a=$b
    b=$c
done

echo
