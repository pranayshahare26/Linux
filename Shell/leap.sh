#! /bin/bash
echo "==== Leap/Not Leap ===="
echo "-----------------------"
echo "Enter a year : "
read year
if (( year % 4 == 0 && year % 100 != 0 )) || (( $year % 400 == 0 ));
then
	echo "This is leap year"
else
	echo "This is not leap year"
fi
