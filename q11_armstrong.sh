#! /usr/bin/env bash

read -p "Enter the number whose sum of digits you want to calculate: " number
single_digit=0
sum_of_digits=0
x=$number

number_length=`expr length $number`

while [[ $number -gt 0 ]]
do
    single_digit=$(( $number % 10 ))   # get Remainder
    number=$(( $number / 10 ))  # get next digit
    ((sum_of_digits=single_digit**number_length+sum_of_digits))
done


echo  "The sum of digits of  $x  is $sum_of_digits."


if [[ $sum_of_digits -eq $x ]]
then 
    echo "$x is an armstrong."
else 
    echo "$x is not an armstrong."
fi