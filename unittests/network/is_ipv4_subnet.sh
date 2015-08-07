#!/bin/bash
declare -r DIR=$(cd "$(dirname "$0")" && pwd)

check(){
source $DIR/../../lib/bsfl.sh
	result=2
	echo "test de $1 : "
	result=$($1)
	result=$?
if [[ $result == $2 ]]
then
	echo [ ok ]
else 
	echo [ ko ]
	errnum=$((errnum+1))
fi
}
conclude(){
	if [[ $errnum == 0 ]]
then
	echo "Tous les tests sont ok!"
elif [[ $errnum == 1 ]]
then
    echo "il y a 1 erreur."
else 
	echo "il y a $errnum erreurs."
fi
}

NETIP="192.168.1.0/24"
errnum=0
echo "===== Supposed OK ====="

check "is_ipv4_subnet 192.168.1.0/24" 0
check "is_ipv4_subnet 10.0.1.0/8" 0
check "is_ipv4_subnet 172.16.1.0/16" 0
check "is_ipv4_subnet 172.16.1.0/0" 0
check "is_ipv4_subnet 172.16.1.4/32" 0
check "is_ipv4_subnet 172.16.1.1/25" 0
check "is_ipv4_subnet 0.0.0.0/1" 0
check "is_ipv4_subnet $NETIP" 0
check "is_ipv4_subnet 10.10.$((3*1)).0/24" 0
check "is_ipv4_subnet 192.168.1.0/04" 0
check "is_ipv4_subnet 192.168.1.0/24'192.168.1.0/24" 1
check "is_ipv4_subnet 10.0.1.0/1++" 1
check "is_ipv4_subnet 10.0.1.0/-1" 1
check "is_ipv4_subnet 10.0.1.0/it" 1
check "is_ipv4_subnet 10.0.1.0/:" 1
check "is_ipv4_subnet 172.16.1.0//16" 1
check "is_ipv4_subnet 0x7f.16.1.0/16" 1
check "is_ipv4_subnet 10...0/8" 1
check "is_ipv4_subnet 172.16.1.0\16" 1
check "is_ipv4_subnet " 1
check "is_ipv4_subnet $TEST" 1
check "is_ipv4_subnet 10.24.1'.'.0/24" 1
check "is_ipv4_subnet 10.24.1\\.0/24" 1
check "is_ipv4_subnet 10...10/24" 1
check "is_ipv4_subnet 10.0.1.1o1/24" 1
check "is_ipv4_subnet 10.0.1.0/8.0/24" 1
check "is_ipv4_subnet 10.10.1.08.0/24" 1
check "is_ipv4_subnet 10.10.1.$((3*150))/24" 1
check "is_ipv4_subnet 10.10.1.0/00" 1

conclude


