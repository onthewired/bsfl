#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../lib/bsfl.sh
source $DIR/unittester.lib

totalerr=0

for FILE in $(find $DIR -mindepth 2 -maxdepth 2  -type f)
        do
            if [[ -x ${FILE} ]]
                then
                "${FILE}"
            elif [[ ! -x ${FILE} ]]
                then
                echo -e ">>> Problem when trying to launch '${FILE}': is not executable or has bad permissions."
            fi
        done
  
echo "$totalerr"
