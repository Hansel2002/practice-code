#!/bin/bash
echo "Welcome to the bash"
read -p "Enter your name: " name
echo "Good, $name"
read -p "Enter the first number: " num1
read -p "Enter the secome number: " num2
div=$((num1/num2))
echo "the result is: $div"
