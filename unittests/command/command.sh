#!/usr/bin/env bash 

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Test if a command exist (ls)

echo "Testing of an existing command (ls):"
OUTPUT="$(cmd "ls")"

if echo "$OUTPUT" | grep -q "OK"
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Test if a command doesn't exist (fakdedd-ls)

echo "Testing of an unknown command (fakdedd-ls):"
OUTPUT="$(cmd "fake-ls")"

if echo "$OUTPUT" | grep -q "FAILED"
then
	echo [ ok ]
else
	echo [ ko ]
fi
