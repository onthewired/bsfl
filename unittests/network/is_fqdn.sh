#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Testing of a working fqdn

echo "Testing of a working fqdn (www.google.com):"

is_fqdn www.google.com

if [ "$?" == "0" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a not working fqdn (azertyuiop)

echo "Testing of a no fqdn string (azertyuiop):"

is_fqdn azertyuiop

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of www.www.google.com

echo "Testing of www.www.google.com:"

is_fqdn www.www.google.com

if [ "$?" == "0" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of www.google.com.com

echo "Testing of www.google.com.com"

is_fqdn www.google.com.com

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi


