#!/usr/bin/env bash

declare -r DIR=$(cd "$(dirname "$0")" && pwd)
source $DIR/../../lib/bsfl.sh
source $DIR/../unittester.lib
errnum=0

STR="     string     test"

echocheck "trim $STR" "string"

conclude "trim"
