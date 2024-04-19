#!/usr/bin/env bash

declare -i a=5

if [[ $a -gt 4 ]]
then
    echo "$a is greater than 4"
else
    echo "$a is less than 4"
fi