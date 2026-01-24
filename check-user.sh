#!/bin/bash

if [[ $# != 2 ]] ; then
	>&2 echo "Error: expect 2 arguments"
	exit 1
fi

if [[ $1 != "-e" ]] || [[ $2 != "-i" ]] ; then
	>&2 echo "Error: unknown flag"
	exit 1
fi

res=$(getent passwd $2)

if [[ $1 == "-e" ]]; then
	if [[ $res == "" ]]; then
			echo "no"
	else
			echo "yes"
	fi
else
	echo $res
fi
	
