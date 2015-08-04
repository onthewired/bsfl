#!/bin/bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

NETIP="192.168.1.0/24"

echo "===== Supposed OK ====="

cmd "is_ipv4_subnet 192.168.1.0/24"
cmd "is_ipv4_subnet 10.0.1.0/8"
cmd "is_ipv4_subnet 172.16.1.0/16"
cmd "is_ipv4_subnet 172.16.1.0/0"
cmd "is_ipv4_subnet 172.16.1.4/32"
cmd "is_ipv4_subnet 172.16.1.1/25"
cmd "is_ipv4_subnet 0.0.0.0/1"
cmd "is_ipv4_subnet $NETIP"
cmd "is_ipv4_subnet 10.10.$((3*1)).0/24"

echo "===== Supposed KO ====="

cmd "is_ipv4_subnet 192.168.1.0/24'192.168.1.0/24"
cmd "is_ipv4_subnet 10.0.1.0/1++"
cmd "is_ipv4_subnet 10.0.1.0/-1"
cmd "is_ipv4_subnet 10.0.1.0/it"
cmd "is_ipv4_subnet 10.0.1.0/:"
cmd "is_ipv4_subnet 172.16.1.0//16"
cmd "is_ipv4_subnet 0x7f.16.1.0/16"
cmd "is_ipv4_subnet 10...0/8"
cmd "is_ipv4_subnet 172.16.1.0\16"
cmd "is_ipv4_subnet "
cmd "is_ipv4_subnet $TEST"
cmd "is_ipv4_subnet 10.24.1'.'.0/24"
cmd "is_ipv4_subnet 10.24.1\\.0/24"
cmd "is_ipv4_subnet 10...10/24"
cmd "is_ipv4_subnet 10.0.1.1o1/24"
cmd "is_ipv4_subnet 10.0.1.0/8.0
/24"
cmd "is_ipv4_subnet 10.10.1.08.0/24"
cmd "is_ipv4_subnet 10.10.1.$((3*150))/24"
cmd "is_ipv4_subnet 10.10.1.0/00"
