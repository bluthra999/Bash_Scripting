#!/usr/bin/env bash 

var=false
while [[  $var=true ]]
do
echo "======Menu===="
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Divison"
echo "5. Exit "
echo "==============="

read -p "Please select your option from above menu: " opt

if [[ $opt -eq 5 ]]
then 
    echo "Quitting..."
    exit
else 
    read -p "Enter the first number: "  a

    read -p "Enter the second number: " b

    case $opt in
        1)

            echo "Addtion selected."
            sum=$(bc<<<"scale=3;$a+$b")
            echo "The addition of $a and $b is: $sum "
            ;;
        2)

            echo "Subtaction selected ."
            difference=$(bc<<<"scale=3;$a-$b")
            echo "The subtaction of $a and $b is: $difference"
            ;;
        3)

            echo "Multiplication selected."
            product=$(bc<<<"scale=3;$a*$b")
            echo "The prodcut of $a and $b is: $product"
            ;;
        4)

            echo "Division selected."
            quotient=$(bc<<<"scale=3;$a/$b")
            echo "The division of $a with $b is: $quotient"
            ;;
        *)   
            echo "Invalid option selected."
            ;;

    esac
    fi
done
