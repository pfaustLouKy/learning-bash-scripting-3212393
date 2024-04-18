#!/usr/bin/env bash

freespace=$(df -h / | awk 'NR==2 {print $4}')
echo "Free space: $freespace"

freemem=$(free -h | awk 'NR==2 {print $4}')
echo "Free memory: $freemem"

greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"

printf -v logdate "%(%Y-%m-%d)T"

echo -e "$bold Quick system report for $greentext
$HOSTNAME$normal"

printf "\tKernel Release:\t%s\n" "$(uname -r)"
printf "\tBash Version:\t%s\n" "$BASH_VERSION"
printf "\tFree Space:\t%s\n" "$freespace"
printf "\tFree Memory:\t%s\n" "$freemem"
printf "\tFiles in pwd:\t%s\n" "$(ls | wc -l)"
printf "\tGenerated on: \t%s\n" "$logdate"

echo -e "\033[31mBright\033[0m"