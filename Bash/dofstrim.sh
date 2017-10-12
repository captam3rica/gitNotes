#!/bin/bash

# Used to perform the fstrim command on /, and /home partitions
#

# Ask for amdin upfront
sudo -v

# Create a log file
LOG="/var/log/fstrim.log"
for mount in / /home; do
    sudo fstrim -v $mount | sed -e "s/^/`date -R` /" | sudo tee -a $LOG

done
