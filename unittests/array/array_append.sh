#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#append of an empty element with an empty array

echo Append of an empty element with an empty array:
OUTPUT="$(array_append tab "")"
if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#append of an empty element with a not empty array

echo Append of an empty element with a not empty array:
declare -a tab='([0]="0")'
array_append tab "3"
echo $tab
if [ "$OUTPUT" == "$tab" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi

#append of ten elements in an existing tab

echo Append of ten elements with an existing tab:
declare -a tab='([0]="0" [1]="1")'
OUTPUT="$(array_append $tab "1" "2" "3" "4" "5" "6" "7" "8" "9" "10")"
echo $OUTPUT
if [ "$OUTPUT" == "0 1 2 3 4 5 6 7 8 9 10" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#
