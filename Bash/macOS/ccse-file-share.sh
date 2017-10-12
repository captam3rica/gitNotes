#!/bin/sh

# ccse faculty file share - smb://10.96.36.45/faculty_data/lnorman

user=$(whoami)

if [ "$user" != "itshw" ]
then
	if [ "$user" != "ITShw" ]
	then
		mkdir /Users/"$user"/Library/KSUDrives
		chflags hidden /Users/"$user"/Library/KSUDrives
		mkdir /Users/"$user"/Library/KSUDrives/CCSEShare
		sudo -u $user -H sh -c "mount_smbfs //'win.kennesaw.edu;$user@10.96.36.45/faculty_data/$user' /Users/"$user"/Library/KSUDrives/CCSEShare"

	fi
fi
