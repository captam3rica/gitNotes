#!/bin/bash

##########
#
# Insert UID and icloud account number
# To find icloud account number use
#           dns-sd -E
#
##########

userUID=`echo $EUID`

sudo scutil set Setup:/Network/BackToMyMac d.add $userUID <XXX>.members.btmm.icloud.com set Setup:/Network/BackToMyMac
