#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh
source $DIR/../unittester.sh

#check(){
#source $DIR/../../lib/bsfl.sh
#	result=2
#	echo "Testing $1 : "
#	tested=$($1)
#	result=$?
#if [[ $result == $2 ]]
#then
#	echo [ ok ]
#else 
#	echo [ ko ]
#	errnum=$((errnum+1))
#fi
#}
#conclude(){
#	if [[ $errnum == 0 ]]
#then
#	echo "All test OK"
#elif [[ $errnum == 1 ]]
#then
#    echo "There is 1 error"
#else 
#	echo "There is $errnum errors"
#fi
#}
errnum=0

#Testing of a working fqdn

check "is_fqdn www.google.com" 0

#Testing of a working real fqdn

check "is_fqdn www.google.com." 0

#Testing of a working fqdn

check "is_fqdn localhost.local" 0

#Testing of a working fqdn

check "is_fqdn localhost.localdomain.localworld.localsolarsystem.localuniverse.local.localhost.localdomain.localworld.localsolarsystem.localuniverse.local.localhost.localdomain.localworld.localsolarsystem.localuniverse.local.localhost.localdomain.localworld.localsolarsystem.localhost.localdomain.localworld.localsolarsystem.localuniverse.local.localhost.localdomain.localworld.localsolarsystem.localuniverse.local.localhost.localdomain.localworld.localsolarsystem.localuniverse.local.localhost.localdomain.localworld.localsolarsy" 0

#        The maximum numbet of octets is a label is 63. RFC1035.
#		 The maximum number of octets in a domain name is 255 octets. RFC1035
#        The maximum length of a fqdn, not a hostname, is 1004 characters.        RFC1035
#        The maximum length of a full qualified hostname is 253 characters. Imputed from RFC952, RFC1123 and RFC1035.
#		Please note that a real fqdn must en with a dot.

#Testing of a working fqdn (youtube)

check "is_fqdn r5---sn-cg07luek.googlevideo.com" 0

#Testing of www.www.google.com

check "is_fqdn www.www.google.com" 0

#Testing of www.google-com.com

check "is_fqdn www.google-com.com" 0

#Testing of a buggy fqdn

check "is_fqdn www.a./.com" 1

#Testing of a buggy fqdn

check "is_fqdn www.attr@ctiveworld.com" 1

#Testing of a buggy fqdn

check "is_fqdn www.~.com" 1

#Testing of a buggy fqdn

check "is_fqdn www.\x41.com" 1

#Testing of a not working fqdn (azertyuiop)

check "is_fqdn azertyuiop" 1

#Testing of www.google.com.com

check "is_fqdn www.google.com.com" 1

#Testing of ipv4

check "is_fqdn 192.168.1.1" 1

#Testing of ipv6

check "is_fqdn 2001:db8:1f89:0:0:0:0:0" 1

conclude
