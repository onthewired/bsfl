#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Testing of an empty mask

echo "Testing of an empty mask:"

OUTPUT="$(mask2cidr)"

if [ "$OUTPUT" != "" ]
then
	echo [ ko ]
else
	echo [ ok ]
fi

#Testing of a working mask:

echo "Testing of a working mask:"

OUTPUT="$(mask2cidr 255.255.255.0)"

if [ "$OUTPUT" == "24" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a 5 part mask

echo "Testing of a wrong mask (5 parts):"

OUTPUT="$(mask2cidr 255.255.255.255.128)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a > 255 mask

echo "Testing of a mask with number > 255 (278.255.255.0):"

OUTPUT="$(mask2cidr 278.255.255.0)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a mask with carac

echo  "Testing of a mask with a charactere (25f.255.255.0):"

OUTPUT="$(mask2cidr 25f.255.255.0)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a wrong mask

echo "Testing of a wrong mask (255.0.255.0)"

OUTPUT="$(mask2cidr 255.0.255.0)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

