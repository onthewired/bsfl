#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

declare -a MASK='([0]="0.0.0.0" [1]="128.0.0.0" [2]="192.0.0.0" [3]="224.0.0.0" [4]="240.0.0.0" [5]="248.0.0.0" [6]="252.0.0.0" [7]="254.0.0.0" [8]="255.0.0.0" [9]="255.128.0.0" [10]="255.192.0.0" [11]="255.224.0.0" [12]="255.240.0.0" [13]="255.248.0.0" [14]="255.252.0.0" [15]="255.254.0.0" [16]="255.255.0.0" [17]="255.255.128.0" [18]="255.255.192.0" [19]="255.255.224.0" [20]="255.255.240.0" [21]="255.255.248.0" [22]="255.255.252.0" [23]="255.255.254.0" [24]="255.255.255.0" [25]="255.255.255.128" [26]="255.255.255.192" [27]="255.255.255.224" [28]="255.255.255.240" [29]="255.255.255.248" [30]="255.255.255.252" [31]="255.255.255.254" [32]="255.255.255.255")'

#Testing of all possible value of cidr

for ((i=0 ; 33 - $i ; i++))
do
	echo "Testing of a /$i cidr:"
	OUTPUT="$(cidr2mask $i)"
	if [ "$OUTPUT" == "${MASK[$i]}" ]
	then
		echo [ ok ]
	else
		echo [ ko ]
	fi
done

#Testing of an empty cidr

echo "Testing of an empty cidr:"

OUTPUT="$(cidr2mask  )"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a cidr > 32

echo "Testing of a cidr > 32:"

OUTPUT="$(cidr2mask 33)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a cidr with a char

echo "Testing of a cidr with a char inside:"

OUTPUT="$(cidr2mask 3f)"

if [ "$OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing with a <0 cidr

echo "Testing of a cidr < 0:"

OUTPUT="$(cidr2mask -3)"

if [ "OUTPUT" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi
