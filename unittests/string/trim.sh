#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

STR="     string     test"

echo "Testing of Trim on \"    string     test\":"
OUTPUT="$(trim $STR)"

if [ "$OUTPUT" == "string" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of Trim on \"string\":"
OUTPUT="$(trim $OUTPUT)"

if [ "$OUTPUT" == "string" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

STR=""

echo "Testing of Trim on an empty string:"
OUTPUT="$(trim $STR)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

