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

SOURCE="/Volumes/DSR/images/"
DESTINATION="/Volumes/DSRepo/"
DESTSERVER=[Remote servers]
# EXCLUDE_FILES

rsync -vvpurci --progress --itemize-changes --human-readable --log-file=$SOURCE/rsync_netbootm.log $SOURCE $USER@$DESTSERVER:$DESTINATION

scp $SOURCE/rsync_netbootm.log $USER@$DESTSERVER:$DESTINATION
