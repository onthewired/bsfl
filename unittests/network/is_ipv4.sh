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

echo "Testing of a 1 part ip adress (122):"

is_ipv4 122

if [ "$?" == "1" ]
then
	echo [ ok ]
else 
	echo [ ko ]
fi

#Testing of a 2 part adress

echo "Testing of a 2 part ip adress (122.122):"

is_ipv4 122.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a three part ip adress"

echo "Testing of a 3 part ip adress (122.122.122):"

is_ipv4 122.122.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a 4 part string

echo "Testing of a 4 part ip adress (122.122.122.122):"

is_ipv4 122.122.122.122

if [ "$?" == "0" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a 5 part string

echo "Testing of a 5 part ip adress (122.122.122.122.122):"

is_ipv4 122.122.122.122.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a > 255 number

echo "Testing of a > 255 number on a 1 part ip adress (333):"

is_ipv4 333

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number on a 2 part ip adress (333.333):"

is_ipv4 333.333

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number on a 3 part ip adress (333.333.333):"

is_ipv4 333.333.333

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number on a 5 part ip adress (333.333.333.333.333):"

is_ipv4 333.333.333.333.333

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a char on a 1 part ip adress (12f)

echo "Testing of a charactere on a 1 part ip adress (12f):"

is_ipv4 12f

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a char on a 2 part ip adress (12f.12f)

echo "Testing of a charactere on a 2 part ip adress (12f.12f):"

is_ipv4 12f.12f

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a char on a 3 part ip adress (12f.12f.12f)

echo "Testing of a charactere on a 3 part ip adress (12f.12f.12f):"

is_ipv4 12f.12f.12f

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a char on a 5 part ip adress (12f.12f.12f.12f)

echo "Testing of a charactere on a 5 part ip adress (12f.12f.12f.12f.12f):"

is_ipv4 12f.12f.12f.12f.12f

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a large number > 999

echo "Testing of a large number > 999 on a 1 part ip adress (1000):"

is_ipv4 1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testting of a large number > 999 on a 2 part ip adress (1000.1000):"

is_ipv4 1000.1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a large number > 999 on a 3 part ip adress (1000.1000.1000):"

is_ipv4 1000.1000.1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a large number > 999 on a 5 part ip adress (1000.1000.1000.1000.1000):"

is_ipv4 1000.1000.1000.1000.1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a > 255 number

echo "Testing of a > 255 number (333.222.222.222):"

is_ipv4 333.222.222.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (222.333.222.222):"

is_ipv4 222.333.222.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (222.222.333.222):"

is_ipv4 222.222.333.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (222.222.222.333):"

is_ipv4 222.222.222.333

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (333.333.222.222):"

is_ipv4 333.333.222.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (222.333.333.222):"

is_ipv4 222.333.333.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (222.222.333.333):"

is_ipv4 222.222.333.333

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (333.333.333.222):"

is_ipv4 333.333.333.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a > 255 number (222.333.333.333):"

is_ipv4 222.333.333.333

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testting of char inside the ip

echo "Testing of a charactere inside the IP string (12f.122.122.122):"

is_ipv4 12f.122.122.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echi [ ko ]
fi

echo "Testing of charactere inside the IP string (122.12f.122.122):"

is_ipv4 122.12f.122.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a charactere inside the IP string (122.122.12f.122):"

is_ipv4 122.122.12f.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a charactere inside the IP string (122.122.122.12f):"

is_ipv4 122.122.122.12f

if [ "$?" == "1" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a characetere inside the IP string (12f.12f.122.122):"

is_ipv4 12f.12f.122.122

if [ "$?" == "1" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testting of a charactere inside the IP string (122.12f.12f.122):"

is_ipv4 122.12f.12f.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a characetere inside the IP string (122.122.12f.12f):"

is_ipv4 122.122.12f.12f

if [ "$?" == "1" ]
then 
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a charactere inside the IP string (12f.12f.12f.122):"

is_ipv4 12f.12f.12f.122

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a charactere inside the IP string (122.12f.12f.12f):"

is_ipv4 122.12f.12f.12f

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a charactere inside the IP string (12f.12f.12f.12f):"

is_ipv4 12f.12f.12f.12f

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testin of 122..111.111

echo "Testing of 122..111.111"

is_ipv4 122..111.111.1

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of 122.122..111

echo "Testing of 122.122..111"

is_ipv4 122.122..111

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of 122.1222.122..

echo "Testing of 122.122.122..:"

is_ipv4 122.122.122..

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of a large number

echo "Testing of a number > 999 (1000.1000.1000.1000):"

is_ipv4 1000.1000.1000.1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (1000.222.222.222):"

is_ipv4 1000.222.222.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (222.1000.222.222):"

is_ipv4 222.1000.222.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (222.222.1000.222):"

is_ipv4 222.222.1000.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (222.222.222.1000):"

is_ipv4 222.222.222.1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (1000.1000.222.222):"

is_ipv4 1000.1000.222.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (222.1000.1000.222):"

is_ipv4 222.1000.1000.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (222.222.1000.1000):"

is_ipv4 222.222.1000.1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (1000.1000.1000.222):"

is_ipv4 1000.1000.1000.222

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

echo "Testing of a number > 999 (222.1000.1000.1000):"

is_ipv4 222.1000.1000.1000

if [ "$?" == "1" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi
