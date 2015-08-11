#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

#Testing of a 3 new item stack

echo "Testing of a stack with 3 elements (item1, item2, item3):"

stack_push item1
stack_push item2
stack_push item3

stack_pop

echo "Test of getting 'item3' back:"
if [ "$REGISTER" == "item3" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

stack_pop

echo "Test of getting 'item2' back:"
if [ "$REGISTER" == "item2" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

stack_pop

echo "Test of getting 'item1' back:"
if [ "$REGISTER" == "item1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of poping an empty stack:"

stack_pop

if [ "$RESGISTER" == "" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

