#!/bin/bash

day_of_week=$(date +%u)

if [ $day_of_week -ge 1 -a $day_of_week -le 5 ]
then
  echo "It is a working day."
else
  echo "It is not a working day."
fi

