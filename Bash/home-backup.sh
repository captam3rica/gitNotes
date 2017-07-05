#!/bin/bash

#
# #############################################################
# # This bash script runs rsync to backup your home directory #
# #############################################################
#

# Version: 1.1.1

# rsync options source destination

# Flags
#
# system backup
# -A or --acls to preserve the ACLs
# -a for archive mode -rlptgoD (no -H, -A, -X)
# -v for verbose mode
# -r or --recursion for recursion through directories
# --progress to show transfer progress on each file
# --delete - deletes files from the dest if they are not on the sourc, and
# only from driectories being synced.
# --exclude-from=/location/of/exclude/file
# -h or --human-readable for human readable output
# --stats
# --dry-run - to perform a dry run
# https://www.computerhope.com/unix/rsync.htm

# Removed -v for verbosity 

ME=$USER
SOURCE=/home/$ME
#DESTINATION=/home/captam3rica/Storage/Backups/home_backup
INCREMENTAL=/run/media/$ME/CHRONOSMACH/Rsync_Backup/Backup-`date +%A`
CURRENT=/run/media/$ME/CHRONOSMACH/Rsync_Backup/Current-Backup
EXCLUDE=/home/$ME/rsync-exclude

echo "Backup of home directory about to begin."
sleep 5
if [ -d "$INCREMENTAL" ]
then
	echo "$INCREMENTAL is mounted! :)"
	echo ""
	echo "Begining backup of home directory..."
	wait 3
	echo ""
    echo "rsync --delete --backup --backup-dir=$INCREMENTAL -az --acls --stats --progress --human-readable --exclude-from=$EXCLUDE --log-file=$SOURCE/rsync_backup_"$DATE".log $SOURCE $CURRENT"
    echo ""
    rsync --delete --backup --backup-dir=$INCREMENTAL -az --acls --stats --progress --human-readable --exclude-from=$EXCLUDE --log-file=$SOURCE/rsync_backup_"$DATE".log $SOURCE $CURRENT
else
	echo "$INCREMENTAL does not exist. Please mount it."
fi

echo "Backup Complete!";

exit 0
