#!/usr/bin/env bash

freespace=$(df -h / | awk 'NR==2 {print $4}')
echo "Free space: $freespace"

freemem=$(free -h | awk 'NR==2 {print $4}')
echo "Free memory: $freemem"