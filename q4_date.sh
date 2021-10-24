#! /usr/bin/env bash



echo "======Menu===="
echo "Enter 1 to convert date of your choice to required format "
echo "Enter 2 to convert today's date into required format"
echo "==============="

read -p "Please enter your option: " option  
 

if [[ $option -eq 1 ]]
then
    read -p "Enter the date (any format) "  user_date

    date +%D --date="$user_date"
else 
    date +%D

fi
