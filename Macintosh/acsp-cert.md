# Apple Certified Support Professional
Last Updated: Fri Dec 22 15:33:01 EST 2017

-   On a Apple Fusion drive, the boot partition is keep on the SSD while the macOS
    recovery partition is kept on the HDD.

-   If a disk is disconnected without ejecting, macOS will run a diagnostic on
    the drive the next time it is connected to the computer. Check for `fsck` in
    the running processes of **Activity Monitor** to verify that a diagnostic is
    taking place.

-   When using **First Aid**, make sure to run it on the disk and the volumes
    contained within that disk.

-   File Vault recovery key can be associated with one AppleID while there are
    multiple local users on the system.

    -   There is an Enterprise Encryption option. 

        Master password, private recovery key, deploying a master keychain, and
        the terminal are required to deploy this feature.

-   ACLs have a bit more options that basic Unix permissions.

    -   Separate ACLs can be applied to files and directories containing those
        files.

-   New directories and files placed in the root of a user's home directory will
    be accessible by all other users on the system unless the permissions are
    changed. The reason for this is because other users must have access to the
    **Public** folder in the user's home directory.

-   `/System/Library/Sandbox/rootless.conf`: all files and dirs protected by SIP

    -   `/Library/SystemMigration/History/Migration-UUID/QuarantineRoot/`: Non 
        compatible SIP apps are moved here

    -   `csrutil`: disable SIP from the recovery partition

-   The difference between partitions and volumes. Partitions are logical divisions,
    and volumes define how files and folders are saved to storage.

