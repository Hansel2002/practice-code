#!/bin/bash

read -p "Enter any number: " number
if ((number%2 == 0)); then
	echo "you entered an even number"
else
	echo "you entered an odd number"
fi
