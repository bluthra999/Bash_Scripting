#! /usr/bin/env bash

read -p "Enter a number whose table you want to print: "  number
i=1
while [[ $i -le 10 ]]
do
	echo "$number * $i = $(($number * $i))" 
	((i=$i + 1))
done
