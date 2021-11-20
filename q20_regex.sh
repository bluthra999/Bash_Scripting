#! /bin/bash

read -p "Enter the month range as a...b: " months

if [[ $months =~ ([0-9]+)\.+([0-9]+) ]]
then
  month_start=${BASH_REMATCH[1]}
  month_end=${BASH_REMATCH[2]}

  echo "Start month: " $month_start
  echo "End month:   " $month_end
else
  echo "Please enter the month range as a...b e.g. 2...5 for Feb to May"
  exit 2
fi

for((i=month_start; i<=month_end; i++))
do
  cal -m $i
done