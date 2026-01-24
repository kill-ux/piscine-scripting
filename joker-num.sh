#!/bin/bash

is_number=^[+-]?[0-9]+$

validate () {
	if  [[ ! $1 =~ $is_number ]] || [[ $1 -lt 1 ]] || [[ $1 -gt 100 ]] ; then
		return 1
	else 
		return 0
	fi
}

if [[ $# != 1 ]] || ! validate $1 ; then
	echo "Error: wrong argument"
	exit 1
fi


for (( i=0; i<5; )); do
		echo "Enter your guess ($(expr 5 - $i) tries left)"
		read guess
	if validate $guess ; then
		if [[ $guess -gt $1 ]]; then
			echo "Go down"
			i=$(expr $i + 1)
		elif [[ $guess -lt $1 ]]; then
			echo "Go up"
			i=$(expr $i + 1)
		else 
				echo "Congratulations, you found the number in $(expr $i + 1) moves!"
			exit 0	
		fi	
	fi

done

echo "You lost, the number was $1"

