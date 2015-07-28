#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#size of an empty array
echo Size of an empty Array:
declare -a tab
OUTPUT="$(array_size tab)"

if [ "$OUTPUT" == "0" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#size of a ten elements' array

echo Size of a ten elements\' array:
declare -a tab2='([0]="0" [1]="1" [2]="2" [3]="3" [4]="4" [5]="5" [6]="6" [7]="7" [8]="8" [9]="9")'
OUTPUT="$(array_size tab2)"
if [ "$OUTPUT" == "10" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi
