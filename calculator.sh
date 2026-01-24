#!/bin/bash

re=^[+-]?[0-9]+$ 

do_add () { expr $1 "+" $2 ; }
do_sub () { expr $1 "-" $2 ; }
do_mult () { expr $1 "*" $2 ; }
do_divide () { expr $1 "/" $2 ; }

if [[ $# != 3 ]]; then 
		>&2 echo "Error: expect 3 arguments"
		exit 1
elif ! [[ $1 =~ $re ]] || ! [[ $3 =~ $re ]]; then 
		>&2 echo "Error: invalid number"
		exit 4
fi

case $2 in
		"+")
		    do_add $1 $3
		    ;;
        "-")  
			do_sub $1 $3
			;;
		"*")
			do_mult $1 $3
			;;
		"/")
			if [[ $3 == 0 ]]; then
			    >&2 echo "Error: division by 0"
		        exit 2
			fi
			do_divide $1 $3
			;;
	    *)
			>&2 echo "Error: invalid operator"
			exit 3	
			;;
esac
