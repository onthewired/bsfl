#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Testing of an empty string

echo "Testing of an empty string:"

is_ipv4      

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing od a "." string

echo "Testing of a \".\" string:"

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a ".." string

echo "Testing of a \"..\" string:"

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a "..." string

echo "Testing of a \"...\" string:"

is_ipv4 ...

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a \"...."\ string:"

echo "Testing of a \"....\" string:"

is_ipv4 ....

if [ "$?" == "1" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a single number string

echo "Testing of a single number string"

is_ipv4 122

if [ "$?" == "1" ]
then
	echo [ ok ]
else 
	echo [ ko ]
fi


