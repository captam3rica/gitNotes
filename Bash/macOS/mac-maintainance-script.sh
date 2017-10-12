#!/bin/bash

#########################
## Mac cleanup script
#########################

## Globals

user=`whoami`
spaceBefore=`df / | tail -1 | awk '{print $4}'`

## Convert bytes to human readable
humanReadable() {
  b=${1:-0}; d=''; s=0; S=(Bytes {K,M,G,T,E,P,Y,Z}iB)
  while ((b > 1024)); do
    d="$(printf ".%02d" $((b % 1024 * 100 / 1024)))"
    b=$((b / 1024))
    let s++
  done
  echo ""
  echo "$b$d ${S[$s]} of space cleaned up <3"
  echo ""
}

## Request root privilages upfront

printf 'Please enter your admin password ... \n'
sudo -v

## Empty Trash

printf "Emptying trash on all volumes ... \n"
sudo /bin/rm -rfv /User/$user/.Trash/* &>/dev/null
sudo /bin/rm -rfv /Volumes/*/.Trash/* &>/dev/null

## Purge /tmp

sudo /bin/rm -rf /tmp/*

## Delete contents of the Downloads folder

sudo /bin/rm -rfv /User/$user/Downloads/*

## Clear out log files

printf "Clearing log files ...\n"

sudo /bin/rm -rfv /Library/Logs/DiagnosticReports/* &>/dev/null
sudo /bin/rm -rfv /Users/$user/Library/Containers/com.apple.mail/Data/Library/Logs/Mail/* &>/dev/null

## Purge any inactive memory

printf 'Purging inactive memeory ...\n'

sudo purge

echo 'Complete !!!'

spaceAfter=`df / | tail -1 | awk '{print $4}'`
spaceReclaimed=$((spaceBefore - spaceAfter))
spaceReclaimed=$(( $spaceReclaimed * 512))

humanReadable $spaceReclaimed
