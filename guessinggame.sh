#!/bin/bash

function checkNum {
	if [[ $1 -gt $2 ]]
	then
		echo "You guess is too big" >&2
		echo 1
	elif [[ $1 -lt $2 ]]
	then
		echo "Your guess is too small" >&2
		echo 1
	else
		echo 0
	fi
}


randnum=$((1 + RANDOM % 100))

echo "Guess the secret number"

status=1

while [[ $status -ne 0 ]]
do
	read guess
	status=$(checkNum $guess $randnum)
done

echo "You won!"

exit 0
