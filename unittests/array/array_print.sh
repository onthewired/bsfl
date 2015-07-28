#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#print an empty tab

echo Printing of an empty array:
declare -a tab
OUTPUT="$(array_print tab)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#print an array of ten elements (0 1 2 3 4 5 6 7 8 9)

echo Printing of a ten elements\' array:

declare -a tab2='([0]="0" [1]="1" [2]="2" [3]="3" [4]="4" [5]="5" [6]="6" [7]="7" [8]="8" [9]="9")'
OUTPUT="$(array_print tab2 | tr -cd '[0-9]')"
if [ "$OUTPUT" == "0123456789" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi
