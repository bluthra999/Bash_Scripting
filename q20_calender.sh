#! /usr/bin/env bash

read -p "Enter the number of terms in the sequence: " range
 
lower_month=$(echo $range|tr -s '[.]'| cut -d "." -f1)
upper_month=$(echo $range | tr -s '[.]' | cut -d "." -f2)
echo "Showing months " $lower_month " to " $upper_month
year=`date +"%Y"`
echo $year

for((i=$lower_month; i<=$upper_month; i++))
do
  cal $i $year
done


