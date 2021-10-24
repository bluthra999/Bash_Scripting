#! /usr/bin/env bash


read -p "Enter the first number: " x
read -p "Enter the second number: " y

if [[ $x -gt $y ]]
then 
    smaller=$y
    for((i=1;i<=$smaller;i++))
    do
        remainder_x=$(($x%$i))
        remainder_y=$(($y%$i))
        if [[ $remainder_x -eq 0 ]] && [[ $remainder_y -eq 0 ]]
        then
            gcd=$i
        fi
    done
else 
    smaller=$x

    for((i=1;i<=$smaller;i++))
    do
        remainder_x=$(($x%$i)) 
        remainder_y=$(($y%$i))
        
        if [[ $remainder_x -eq 0 ]] && [[ $remainder_y -eq 0 ]]
        then
            gcd=$i
        fi        
    done              
fi  

 echo "gcd of $x and $y is $gcd."


 product=$(($x*$y))
 lcm=$(($product/$gcd))
 echo "lcm of $x and $y is $lcm."