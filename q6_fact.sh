#! /usr/bin/env bash

read -p "Enter the number whose factorial you want to calculate " number

fact=1
while [[ $number -gt 1 ]]
do
	  fact=$((fact * number))  
	  number=$((number - 1))     
done
echo "$fact"
