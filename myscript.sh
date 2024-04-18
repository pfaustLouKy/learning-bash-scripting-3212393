#!/usr/bin/env bash

declare -a snacks=("apple" "banana" "orange")
echo ${snacks[2]}
snacks[5]="grape"
snacks+=("mango")
echo ${snacks[@]}
for i in {0..6}; do echo "$i: ${snacks[i]}"; done
