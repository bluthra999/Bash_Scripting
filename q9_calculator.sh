#!/usr/bin/env bash 

var=false
while [[  $var==true ]]
do
echo "======Menu========="
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Divison"
echo "5. Exit "
echo "=================="

read -p "Please select your option from above menu: " opt

   
    case $opt in
        1)

            echo "Addtion selected."
            read -p "Enter the first number: "  a
            read -p "Enter the second number: " b

            sum=$(bc<<<"scale=3;$a+$b")
            echo "The addition of $a and $b is: $sum "
            ;;
        2)

            echo "Subtaction selected ."
            read -p "Enter the first number: "  a
            read -p "Enter the second number: " b
            difference=$(bc<<<"scale=3;$a-$b")
            echo "The subtaction of $a and $b is: $difference"
            ;;
        3)

            echo "Multiplication selected."
            read -p "Enter the first number: "  a
            read -p "Enter the second number: " b
            product=$(bc<<<"scale=3;$a*$b")
            echo "The prodcut of $a and $b is: $product"
            ;;
        4)

            echo "Division selected."
            read -p "Enter the first number: "  a
            read -p "Enter the second number: " b
            quotient=$(bc<<<"scale=3;$a/$b")
            echo "The division of $a with $b is: $quotient"
            ;;
        
        5) echo "Quitting..."
            exit
            ;;
        *)   
            echo "Invalid option selected.Please re -select  from the menu. "
            ;;

    esac
done
