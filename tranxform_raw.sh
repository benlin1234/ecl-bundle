#!/bin/bash
input=$1
output=$2
skip=${3:-0}
tail -n+$skip "$input" | awk '{first = $1; $1=""; print first "\t" $0}' | sed "s/ \\+//" > "$output"
