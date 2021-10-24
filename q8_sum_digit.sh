#! /usr/bin/env bash 

read -p "Enter the number whose sum of digits you want to calculate " number
single_digit=0
sum_of_digits=0
x=$number
while [[ $number -gt 0 ]]
do
    single_digit=$(( $number % 10 ))   # get Remainder
    number=$(( $number / 10 ))  # get next digit
    sum_of_digits=$(( $sum_of_digits+ $single_digit ))  # calculate sum of digits
done
echo  "Sum of $x  is $sum_of_digits"
