#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Test a no existing file

echo "Testing of a no existing file (/etc/trollolo):"
file_exists /etc/trollolo

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Test of an existing file

echo "Testing of an existing file (/etc/passwd):"
file_exists /etc/passwd

if [ "$?" == "0" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi
