# macOS Installer Notes 

sudo ./startosinstall OSInstallerSetup.framework/
Usage: startosinstall

Arguments

--applicationpath, a path to copy of the OS installer application to start the install with.
--license, prints the user license agreement only.
--agreetolicense, agree to license the license you printed with --license.
--rebootdelay, how long to delay the reboot at the end of preparing. This delay is in seconds and has a maximum of 300 (5 minutes).
--pidtosignal, Specify a PID to which to send SIGUSR1 upon completion of the prepare phase. To bypass "rebootdelay" send SIGUSR1 back to startosinstall.
--converttoapfs, specify either YES or NO on if you wish to convert to APFS.
--installpackage, the path of a package to install after the OS installation is complete; this option can be specified multiple times.
--usage, prints this message.

Example: startosinstall --converttoapfs YES

##################################################

./createinstallmedia --usage
Usage: createinstallmedia --volume <path to volume to convert>

Arguments

--volume, A path to a volume that can be unmounted and erased to create the install media.
--applicationpath, A path to copy of the OS installer application to create the bootable media from.
--nointeraction, Erase the disk pointed to by volume without prompting for confirmation.

Example: createinstallmedia --volume /Volumes/Untitled

This tool must be run as root.
