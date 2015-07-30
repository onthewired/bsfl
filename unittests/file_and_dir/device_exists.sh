#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Testing of a no existing device (/dev/sda)

echo "Testing of a no existing device (/dev/sdade):"
device_exists /dev/sdade

if [ "$?" == 1 ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of an existing device (/dev/sda)

echo "Testing of an existing device (/dev/sda):"
device_exists /dev/sda

if [ "$?" == 0 ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi
