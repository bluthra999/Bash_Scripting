#! /usr/bin/env bash
<<  Description
This is code will continue to run until valid path of all 3 files is entered.
Description

read -p "Enter the file_1 path: " file_1
var=false
while [[  $var=true ]]
do 
   if  [[ -f $file_1 ]]
   then 
        break

    else 
    
        read -p "$file_1 not found.Re-enter the correct path: " file_1
   fi  

done

read -p "Enter the file_2 path: " file_2
var=false
while [[  $var=true ]]
do 
   if  [[ -f $file_2 ]]
   then 
        break

    else 
       read -p "$file_2 not found.Re-enter the correct path: " file_2
   fi  

done
    
read -p "Enter path of file_3: " file_3
var=false
while [[  $var=true ]]
do 
   if  [[ -f $file_3 ]]
   then 
        break

    else 
       
       read -p "$file_3 not found.Re-enter the correct path: " file_3
   fi  

done


cat $file_1 $file_2 $file_3 | sort > file_4 | pr  file_4





