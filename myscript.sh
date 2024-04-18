#!/usr/bin/env bash

echo "The results are:$(( 2 + 2 )) and $(( 3 / 1 ))"
printf "The results are: %d and %d\n" $(( 2 + 2 )) $(( 3 / 1 ))