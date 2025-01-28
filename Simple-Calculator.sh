#!/bin/bash

echo "Welcome to the Simple Calculator"
echo "Select an Operation"
echo "1. Addition"
echo "2.Substraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter the choices (1-4): " choice

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

case $choice in
	1)
		result=$((num1 + num2))
		echo "The sum of the $num1 and $num2 is $result"
		;;
	2)
		result=$((num4 - num2))
		echo "The difference of the $num1 and $num2 is $result"
		;;
	3)
		result=$((num1 * num2))
		echo "The product of the $num1 and $num2 is $result"
		;;
	4)
		if [ $num2 -ne 0 ]; then
			result=$(echo "scale=2; $num1 / $num2" | bc)
			echo "The Division of $num1 by $num2 is $result"
		else
			echo "Error: Division by zero is not allowed"
		fi
		;;
	*)
		echo "Invalid choice. Please select an operation between 1 and 4."
		;;
esac

