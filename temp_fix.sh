#! /usr/bin/env bash

number=$1

remainder=$(($number%2))
if [[ $number -eq 1 ]]
then
    exit 1
else

    if [[ $remainder -eq 0  ]]
    then
        exit 1
    else
        for((i=3; i<$number; i=i+2))
        do
            remainder=$(($number%$i))

            if [[ $remainder -eq 0 ]]
            then
                exit 1
            fi

        done
        exit 0
    fi
fi