#! /usr/bin/env bash

read -p "Enter the base: "  base
read -p "Enter the power: " power
ans=1

<< m1
ans=$(awk "BEGIN {print $base**$power}")
echo "The answer is $ans"
m1

for((i=1; i<=$power; i++))
do 
    
    ((ans=ans*base))


done
echo "$base^$power is: $ans"
