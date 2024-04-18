#!/usr/bin/env bash

declare -a office
office[city]="San Francisco"
office["building_name"]="HQ West"
echo ${office["building_name"]} is in ${office[city]}