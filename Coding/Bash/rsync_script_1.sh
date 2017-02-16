###
# rsync script to syncronize the DeployStudioServer files between two servers
#
#
# Matt Wilson
# Kennesaw State University
# November 29, 2016
#
# -i - output a change summary at the end of the sync
# -v - verbose output
# -p - preserve permissions
# -r - recursively copy items
# -u - skip files that are newer on the receiver
# -c - skip based on checksum
# -t - preserve times
#
###

SOURCE="/Location/of/files"
DESTINATION="/Destination/of/files"
DESTSERVER=[Remote server IP address here]
DATE=`date "+%Y%m%d"`
# EXCLUDE_FILES

rsync -vvrucip --progress --itemize-changes --human-readable --log-file=$SOURCE/rsync_netboot_"$DATE".log $SOURCE $USER@$DESTSERVER:$DESTINATION

scp $SOURCE/rsync_netboot.log $USER@$PUSHTOSERVER:$DESTINATION

exit
