#!/usr/bin/env bash 


echo "======Menu===="
echo "1. Addition"
echo "2. Sub"
echo "3. Mul"
echo "4. Div"
echo "==============="


read -p "Please select your option from above menu: " opt
read -p "Enter the first number: "  a

read -p "Enter the second number: " b

case $opt in
    [A-Z][a-z]) #we can include multiple patterns here like in grep 

        echo "You selected addtion"

        echo "The addition of $a and $b is: $((a+b))"
        ;;
    2)

        echo "You selected sub"

        echo "The sub of $a and $b is: $((a-b))"
        ;;
    3)

        echo "You selected mul"

        echo "The mul of $a and $b is: $((a*b))"
        ;;
    4)

        echo "You selected div"

        echo "The div of sa with sb is: $((a/b))"
        ;;

    *)   
        echo "You selected invalid option"
        ;;

esac

