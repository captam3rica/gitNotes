#!/bin/bash

#############################################################################
## Run the caffeine program for a specified amount of time.
#
# Enter a number, in seconds, after the script
#
# i.e. "caffeiner-x.x.x.sh 600" to keep the computer display awake for
# 10 minutes.
#
# Matt Wilson
# 2017.07.20
#############################################################################


/usr/bin/caffeinate -u -t $1 &
