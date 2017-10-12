#!/bin/bash

########
# Grab the latest package list from manually installed packages,
# and packages installed from the AUR. Then, dump them to them
# to their respective text files.
#       pkglist.txt
#       pkglist_aur.txt
########

# Variables
ME=`whoami`

# Ask for admin upfront
sudo -v

# Main script

sudo pacman -Qqent | sed -e "s/^/`date +"%m-%d-%Y-%T"` /" | sudo tee /home/$ME/pkglist.txt > /dev/null 2>&1
sudo pacman -Qqm | sed -e "s/^/`date +"%m-%d-%Y-%T"` /" | sudo tee /home/$ME/pkglist_aur.txt > /dev/null 2>&1

exit 0
