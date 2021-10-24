#! /usr/bin/env bash

read -p "Enter the number of rows you want to print: " rows

for((i=1; i<=rows; i++))
do
  for((j=1; j<=rows - i; j++)) # shifts the cursor to the right position 
  do
    echo -n "  "
  done
  for((j=1; j<=2*i-1 ; j++))
  do
    echo -n "* "
  done
  echo " " #creates empty line 
done


