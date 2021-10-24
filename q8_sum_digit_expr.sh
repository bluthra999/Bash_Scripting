#8b
#! /usr/bin/env bash

read -p "Enter the number whose sum of digits you want to calculate: " number
single_digit=0
sum_of_digits=0
number_length=`expr length $number`


for((i=1; i<=$number_length; i++))
do 
    
    single_digit=`expr substr $number $i 1`
    ((sum_of_digits=single_digit+sum_of_digits))

done

echo "The sum of digits of $number is $sum_of_digits."