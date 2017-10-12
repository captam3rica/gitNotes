#!/bin/bash

#############################################################
#
# Use the this script to enable both Auto Boot features for
# MacBook & MacBook Pro starting 2016
#
#     NOTE: This will remain until a PRAM reset
#
#              sudo nvram BootAudio=%00
#              sudo nvram BootAudio=%01
#
#############################################################

# Enable boot on Lib open and boot on power adapter connect
sudo nvram BootAudio=%01

exit
