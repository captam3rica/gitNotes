#!/bin/bash

###############################################################################
# My Gsettings for Gnome3
# Date: 10.17.2017
#
## Tested with GNOME Shell 3.26.1 on Arch Linux
## Plan to try these settings on Ubuntu 17.10 when it releases with Gnome as
## the default desktop environment
#
## to get a setting value: gsettings get [SCHEMA-PATH] [Key-value]
## to list available key values: gsettings list-keys [SCHEMA-PATH]
## to set a Key-value: gsettings set [SCHEMA-PATH] [Key-value] [value]
################################################################################


#######################
## Desktop Settings  ##
#######################

## BACKGROUND
gsettings set org.gnome.desktop.background picture-uri 'file:////usr/share/gnome-control-center/pixmaps/noise-texture-light.png'
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.gnome.desktop.background color-shading-type 'solid'
gsettings set org.gnome.desktop.background primary-color '#425265'
gsettings set org.gnome.desktop.background picture-options 'zoom'
gsettings set org.gnome.desktop.background picture-opacity 100
gsettings set org.gnome.desktop.background secondary-color '#425265'

## Input-sources - swap left ctrl and left alt
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:swap_lalt_lctl']"

## INTERFACE
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface cursor-blink true

### Default Fonts
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface font-name 'Roboto 11'
gsettings set org.gnome.desktop.interface text-scaling-factor 0.73

### Turn Animations off
gsettings set org.gnome.desktop.interface enable-animations false

### Gtk+ Theme
# Make sure this is pre installed either through the AUR or other means.
gsettings set org.gnome.desktop.interface gtk-theme 'Numix-Frost'

### Icon Theme
# Download this from https://github.com/daniruiz/Flat-Remix.git
# Make sure this is in ~/.icons/
gsettings set org.gnome.desktop.interface icon-theme 'Flat Remix'

### Show Battery Percentage
gsettings set org.gnome.desktop.interface show-battery-percentage true

### Toolbar Icon Size
gsettings set org.gnome.desktop.interface toolbar-icons-size 'small'

## PERIPHERALS
### Mouse Settings
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true

### Trouchpad
gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.touchpad tap-and-drag false
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click false

### Keyboard
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval unit32 15

## PRIVACY
gsettings set org.gnome.desktop.privacy old-files-age 5
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.desktop.privacy show-full-name-in-top-bar false
gsettings set org.gnome.desktop.privacy hide-identity true

## SCREENSAVER
gsettings set org.gnome.desktop.screensaver picture-options 'wallpaper'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:////usr/share/gnome-control-center/pixmaps/noise-texture-light.png'
gsettings set org.gnome.desktop.screensaver primary-color '#d272c4'
gsettings set org.gnome.desktop.screensaver secondary-color 'd272c4'
gsettings set org.gnome.desktop.screensaver user-switch-enabled false
gsettings set org.gnome.desktop.screensaver logout-enabled true
gsettings set org.gnome.desktop.screensaver show-full-name-in-top-bar true

## WM preferences
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Roboto Bold 11'
gsettings set org.gnome.desktop.wm.preferences visual-bell true
gsettings set org.gnome.desktop.wm.preferences visual-bell-type 'frame-flash'

###########################
## Login Screen Settings ##
###########################

gsettings set org.gnome.login-screen banner-message-enable true
gsettings set org.gnome.login-screen banner-message-text 'It all begins here ... /_inux'
gsettings set org.gnome.login-screen disable-user-list true

#######################
## Nautilus Settings ##
#######################

## Sort Folders Before Files
gsettings set org.gtk.Settings.FileChooser sort-directories-first true

## Nautilus Icon View
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'small'

## Nautilus List view
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.list-view use-tree-view true

## Preferences
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.preferences show-delete-permanently true
gsettings set org.gnome.nautilus.preferences search-view 'list-view'
gsettings set org.gnome.nautilus.preferences use-experimental-views true
# gsettings set org.gnome.nautilus.preferences sort-directories-first true

####################
## Shell Settings ##
####################

# Make sure this is pre installed either through the AUR or other means.
gsettings set org.gnome.shell.extensions.user-theme name 'Numix-Frost'

gsettings set org.gnome.shell app-picker-view 1
# gsettings set org.gnome.shell enable-extensions '['user-theme@gnome-shell-extensions.gcampax.github.com', 'status-menu-buttons@dev.antergos.com', 'dash-to-dock@micxgx.gmail.com', 'apps-menu@gnome-shell-extensions.gcampax.github.com', 'openweather-extension@jenslody.de', 'TopIcons@phocean.net', 'System_Monitor@bghome.gmail.com']'

## Terminal Settings
## /org/gnome/terminal/legacy/

##############################
##   Application Settings   ##
##############################

# Make sure that all apps are installed if you are adding settings for them 

## Gnome Books
gsettings set org.gnome.books  view-as list
gsettings set org.gnome.books  night-mode true

## Gnome Calculator
gsettings set org.gnome.calculator button-mode advanced

## Gnome Calendar
gsettings set org.gnome.calendar window-maximized false

## Gnome Documents
gsettings set org.gnome.documents view-as 'list'
gsettings set org.gnome.documents night-mode true

## Gnome-system Monitor
gsettings set org.gnome.gnome-system-monitor show-whose-processes 'all'
gsettings set org.gnome.gnome-system-monitor window-state '(991, 500, 50, 50)'
