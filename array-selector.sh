#!/bin/bash

arr=("red" "blue" "green" "white" "black")

if [[ $# != 1 ]] || [[ ! $1 =~ ^[+]?[1-5]$ ]] ; then
		echo "Error"
		exit 1
fi

index=$(expr $1 - 1)
echo ${arr[$index]}
	
	
