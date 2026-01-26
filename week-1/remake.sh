#!/bin/bash
if [[ $# > 1 ]] || [[ ! -d $1 ]] ; then
	echo "Error"
	exit 1
fi

cd $1

touch -d "2026-01-01 00:01:00" "ciao" 
chmod 442 ciao

mkdir "mamma"
touch -d "2026-01-02 00:01:00" "mamma" 
chmod 777 mamma

touch -d "2026-01-03 00:01:00" "guarda" 
chmod 400 guarda

touch -d "2026-01-04 00:01:00" "come" 
chmod 642 come

mkdir "mi"
touch -d "2026-01-05 00:01:00" "mi" 
chmod 452 mi

touch -d "2026-01-06 00:01:00" "diverto"
chmod 421 diverto

