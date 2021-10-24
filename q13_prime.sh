#! /usr/bin/env bash

echo "$1 is the entered  number."

number=$1

remainder=$(($number%2))
if [[ $number -eq 1 ]]
then 
    echo "1 is neither prime nor composite."

elif  [[ $number -eq 2 ]]
then 
    echo "2 is a prime number."

else
    if [[ $remainder -eq 0  ]]
    then
        echo  "$number is not a prime number."
        exit 0
    else 
        for((i=3; i<$number; i=i+2))
        do 
            remainder=$(($number%$i))

            if [[ $remainder -eq 0 ]]
            then 
                echo "$number is not a prime number."
                exit 0
            fi
        
        done
        echo "$number is a prime number." 
    fi
fi