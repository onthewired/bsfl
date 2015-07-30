#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Testing of a no existing directory (/etc/fake_dir)

echo "Testing of a no existing directory (/etc/fake_dir):"
directory_exists /etc/fake_dir

if [ "$?" == "1" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of an existing directory (/etc)

echo "Testing of an existing directory (/etc):"
directory_exists /etc

if [ "$?" == 0 ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi
