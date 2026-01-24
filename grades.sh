#!/bin/bash

is_number='^[0-9]+$'

validate_grad () {
	if  [[ ! $1 =~ $is_number ]] || [[ $1 -gt 100 ]] ; then
		return 1
	else 
		return 0
	fi
}

if [[ $# != 1 ]] || [[ ! $1 =~ $is_number ]] ; then
	>&2 echo ""Error: expect 1 argument only!""
	exit 1
fi


declare -a results=()
for  (( element=1; element <= "$1"; element++ )) do
	read -p "Student Name #$element: " name
	read -p "Student Grade #$element: " grade
	if ! validate_grad $grade ;then
		echo "Error: The grade "$grade" is not a valid input. Only numerical grades between 0 and 100 are accepted."
		exit 1
	fi

	if [[ $grade -ge 90 ]]; then
		results+=("$name: You did an excellent job!")
	elif [[ $grade -ge 70 ]]; then
			results+=("$name: You did a good job!")
	elif [[ $grade -ge 50 ]]; then
			results+=("$name: You need a bit more effort!")
	else
			results+=("$name: You had a poor performance!")
	fi
done

printf '%s\n' "${results[@]}"
