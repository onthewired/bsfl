#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh

LOG_ENABLED=y

#Testing of the creation of the file

log_ok "Unittest log msg" 

echo "Testing of the file creation:"
if [ -f"$LOG_FILE" ]
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of the content

echo "Testing log's content:"
if cat $LOG_FILE | grep -q "Unittest log msg"
then
	echo [ ok ]
else
	echo [ ko ]
fi

#Testing of the status

echo "Testing log's status:"
if cat $LOG_FILE | grep -q "OK"
then 
	echo [ ok ]
else
	echo [ ko ]
fi

#log file removing

rm $LOG_FILE
