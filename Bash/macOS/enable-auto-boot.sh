#!/bin/bash

#############################################################
#
# Use the this script to enable both Auto Boot features for
# MacBook & MacBook Pro starting 2016
#
#     NOTE: This will remain until a PRAM reset
#
#       %00 = off
#       %01 =
#       %02 =
#       %03 = both on
#
#############################################################

# Enable boot on Lib open and boot on power adapter connect
sudo nvram AutoBoot=%03

exit
