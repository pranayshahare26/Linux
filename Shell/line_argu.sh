#!/bin/bash

while true
do
  echo "Menu"
  echo "--------------"
  echo "1: Addition"
  echo "2: Subtraction"
  echo "3: Multiplication"
  echo "4: Division"
  echo "5: Exit"
  read -p "Enter your choice: " choice

  if [ $choice -eq 5 ]; then
    echo "Exiting program..."
    break
  fi

  read -p "Enter the first number: " n1
  read -p "Enter the second number: " n2

  case $choice in
    1)
      result=$(echo "$n1 + $n2" | bc -l)
      echo "The sum of $num1 and $n2 is $result"
      ;;
    2)
      result=$(echo "$n1 - $n2" | bc -l)
      echo "The difference between $n1 and $n2 is $result"
      ;;
    3)
      result=$(echo "$n1 * $n2" | bc -l)
      echo "The product of $n1 and $n2 is $result"
      ;;
    4)
      result=$(echo "$n1 / $n2" | bc -l)
      echo "The quotient of $n1 and $n2 is $result"
      ;;
    *)
      echo "Invalid choice!"
      ;;
  esac
done

