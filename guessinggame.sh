#!/bin/bash

randnum=$((1 + RANDOM % 100))

read guess

while [[ $guess -ne $randnum ]]
do
	if [[ $guess -gt $randnum ]]
	then
		echo "Your guess is too large"
	else
		echo "Your guess is too small"
	fi
	read guess
done

echo "You won!"

exit 0
