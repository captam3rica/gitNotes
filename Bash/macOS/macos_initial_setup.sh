#!/bin/bash

# https://gist.github.com/khebbie/b54eeaf851c69cb1829e

# Initial config script for setting preferences

#######################################
# Prereqs                             #
#######################################

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do
  sudo --non-interactive true;
  sleep 60;
  kill -0 "$$" || exit; ## $$ - PID of current shell
done 2>/dev/null &

#######################################
# Finder                              #
#######################################

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool false

# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true

#######################################
# Dock & Dashboard                    #
#######################################



#######################################
# Terminal                            #
#######################################

# Use a modified version of the Pro theme by default in Terminal.app
open "${HOME}/init/Galaxy.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.terminal "Default Window Settings" -string "Galaxy"
defaults write com.apple.terminal "Startup Window Settings" -string "Galaxy"
