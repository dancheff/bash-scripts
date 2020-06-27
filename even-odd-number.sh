#!/bin/bash

# To check if number is even or odd (number range 1 - 50) with  # for loop

for i in {1..50}
do
	out=$(( $i % 2 ))
	if [ $out -eq 0 ]
	then 
		echo "$i is even number"
	else
		echo "$i is odd number"
	fi
done
