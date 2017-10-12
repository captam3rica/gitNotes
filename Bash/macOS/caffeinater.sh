#!/bin/bash

## Run the caffeine program for a specified amount of time.

### Variables ###
H=60
M=60
zero=0;

read -p "Enter a time duration in seconds(600 = 10min): " userTime
printf "\n"

sleep 5
/usr/bin/caffeinate -u -t $userTime &
