#!/bin/sh

ARD="/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart"

$ARD -configure -activate
$ARD -configure -access -on -users itshw -privs -all
$ARD -configure -allowAccessFor -specifiedUsers
$ARD -configure -clientopts -setmenuextra -menuextra yes

exit 0
