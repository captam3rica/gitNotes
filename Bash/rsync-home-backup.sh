#!/bin/bash

#
# #############################################################
# # This bash script runs rsync to backup your home directory #
#
#   - Checks to see if the destination is mounted
#	- If it is mounted then it continues to run the rysnc
#	script.
#
#	ToDo:
#
#	- Workout an archiving system
#	- Add user input functionality
#		- Change the default location
#		- Define another location - Done
#	- Find a way to capture the backup driver from the user the first time and
#	make that perminent there after until changed
#	- Automatically mount and unmount the backup drive
#
#
# #############################################################
#

# Version: 1.2.1

# rsync options [source] [destination]

# Rsync Flags
#
# system backup
# -A or --acls to preserve the ACLs
# -a for archive mode -rlptgoD (no -H, -A, -X)
# -v for verbose mode
# -r or --recursion for recursion through directories
# --progress to show transfer progress on each file
# --delete - deletes files from the dest if they are not on the
# 	source, and
# only from driectories being synced.
# --exclude-from=/location/of/exclude/file
# -h or --human-readable for human readable output
# --stats
# --dry-run - to perform a dry run
# https://www.computerhope.com/unix/rsync.htm

## Release Notes

# Removed -v for verbosity
# Added user input functionality when default destination is not mounted.
# Updates to code syntax and formatting

#############################################################


ME=`whoami`
SOURCE="/home/$ME"
DAILY=Backup-`date +%A`
INCREMENTAL="/run/media/$ME/CHRONOSMACH/RsyncBackup/Backup-`date +%A`"
CURRENT="/run/media/$ME/CHRONOSMACH/RsyncBackup/Current-Backup"
ALTDEST=''
EXCLUDE="/home/$ME/rsync-exclude"
LOGS="$SOURCE/RsyncBackupLogs/"

printf "Backup of $SOURCE directory about to begin.\n"
sleep 3

# Check to see if predefined back location is mounted
if [ -d "$CURRENT" ]; then
	echo ""
	printf "$DAILY is mounted! :)\n"
	printf "Begining backup of $USER's home directory ...\n"
	sleep 5
    	printf "rsync --delete --backup --backup-dir=$INCREMENTAL -az --acls --stats --progress --human-readable --exclude-from=$EXCLUDE --log-file=$LOGS/rsync_backup_$DATE.log $SOURCE $CURRENT\n"

	# Rsync script to backup home directory incrementally and with an entire snapshot
    	/usr/bin/rsync --delete --exclude-from=$EXCLUDE --backup --backup-dir=$INCREMENTAL -az --acls --stats --progress --human-readable --log-file=$LOGS/rsync_backup_"`date +%d%m%Y-%H%M%S`.log" $SOURCE $CURRENT
	printf "Backup to $CURRENT has completed!\n"
	echo "Unmounting backup drive"
	umount /run/media/captam3rica/CHRONOSMACH

else
	### Grab user specified backup location
	read -p "Please enter a backup location that you would like to use: " ALTDEST
	echo ""
	read -p "Is $ALTDEST the location that you were intending? [Y/n]: " YN

	### Adding a while loop to be able to run the check again if no
	while true
	do
		case $YN in
			[yY]* ) printf "Starting backup to $ALTDEST ...\n"
					echo ""
					/usr/bin/rsync rsync --delete -az --acls --stats --progress --human-readable --exclude-from '$EXCLUDE' --log-file=$SOURCE/rsync_backup_"$DATE".log $SOURCE $ALTDEST
					printf "The back up to $ALTDEST has completed!\n"
					break;;

			[nN]* ) exit;;

			* ) printf "Just enter a Y or N, please!\n"; break;;
		esac
	done

	### If Y or y continue with the backup otherwise, quit
	#if [[ $YN == "Y" || "y" ]]; then
	#	echo "Starting backup to $ALTDEST ..."
	#	rsync --delete -az --acls --stats --progress --human-readable #--exclude-from=$EXCLUDE --log-file=$SOURCE/rsync_backup_"$DATE".log $SOURCE $ALTDEST
	#	echo "Backup to $ALTDEST has completed!"
	# else
	#	echo "An alternate backup location was not specified."
	#fi
fi
