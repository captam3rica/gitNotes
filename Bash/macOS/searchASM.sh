#!/bin/bash

###################################
###################################
# Pass a username to the script to
# get a listing of assets belonging
# to that user
###################################
###################################

file="FullASMList_csv.csv"
database="/Users/$USER/Desktop/$file"

read -p "Enter a username: " username
### This one works pretty good ###
# less $database | awk '{gsub(","," - ");print}' | grep --color $username
less $database | awk -F '-' '{gsub(","," - "); gsub(/"/, ""); print $1, $4, $12, $11}' | grep --color $username

## Other command strings that I was trying ##

# awk -F "," '{print $1}' FullASMList_csv.csv | grep --color -E "P.{0,5}"

# less FullASMList_csv.csv | awk -F '-' '{gsub(","," - "); gsub(/"/, ""); print $1, $4, $11, $12}' | grep --color jreeber

# less $database | awk -F '-' '{gsub(","," - "); gsub(/"/, ""); print $1, $4, $12, $11}' | grep --color $username
