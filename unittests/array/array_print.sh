#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#print an empty tab

echo Printing of an empty array:
declare -a tab
OUTPUT="$(array_print tab)"

if [ "$OUTPUT" == "" ]
then
	echo ok
else
	echo ko
fi
