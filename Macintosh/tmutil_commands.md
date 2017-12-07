# tmutil

## Primary Commands:

- enable
- disable
- startbackup
- stopbackup
- disablelocal
- enablelocal
- add exclusion - this command is sticky, meaning that even if you move the file or folder, it will still be a part of the list.
    - -p: This causes the command to act the same way that TimeMachine acts in system preferences
- destinationinfo
- remove destination
- setdestination /Volumes/<volume_name>
- listbackups
- calculatedrift /backup/folder: This will calculate how much your backups have changed over time
- currentphase
- destinationinfo
- quickcheckimage
- status
- verifyadditions
- verifybackups

## Other Info:

- man tmutil for more info
- strings /usr/bin/tmutil | less
