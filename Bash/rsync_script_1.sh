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

SOURCE="/Volumes/DSRepo"
DESTINATION="/Volumes/DSR/images/"
DESTSERVER=[Remote server]
# EXCLUDE_FILES

rsync -vvrucip --progress --itemize-changes --human-readable --log-file=$SOURCE/rsync_netboot.log $SOURCE $USER@$DESTSERVER:$DESTINATION

scp $SOURCE/rsync_netboot.log $USER@$PUSHTOSERVER:$DESTINATION
