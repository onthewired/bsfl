#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#size of an empty array
echo Size of an empty Array:
declare -a tab
OUTPUT="$(array_size tab)"

if [ "$OUTPUT" == "0" ]
then
	echo ok
else
	echo ko
fi

