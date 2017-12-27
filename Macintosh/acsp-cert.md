# Apple Certified Support Professional
Last Updated: Wed Dec 27 16:26:01 EST 2017

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

## Data Management 

-   Hide a flag by enabling the hidden flag or adding a (.) at the font of the
    file or folder. 

    `sudo chflags nohidden [file or dir name]`   
    `sudo chflags hidden [file or dir name]`

-   The user's Library folder can be made visible in finder through **View
    Options**

-   Pkgs can also be called **Opaque Packages**

-   An **Alias** is made of the UID, the path, and the file name it links to. If
    the original item is deleted, the alias breaks. An **Alias** cannot be
    created from a Terminal and do not work from the Terminal.

-   **Symbolic links** will break if the file is move, renamed, or deleted. Can
    only be created from CLI.

-   **Hard links** are an actual additional address or reference to inode address
    of a file, but it is not another copy of said file. It is possible to have
    multiple hard links with unique names that will point to the same file.

    **Time Machine** uses hard links to point to files that have not changed since
    the previous backup.

-   Cannot create a DMG from the currently running volume. DMG images can be
    modified and converted through the **Disk Utility**.

-   The System Library contains startup and other files needed for the system to
    function. `/System/Library/User Template` is the only folder in System Library that is
    not protected by SIP.

-   **Extensions (kernel extensions) aka Kext** is a dynamically loaded bundle
    of executable code that runs in the kernel space. driver, network filters,
    and file system. 

    Primarily for driver support for hardware, peripherals, and networking.

-   **Frameworks** are additional resource for apps and other system processes
    to utilize. Located in the `/Library`. See currently loaded frameworks in
    the **Console** menu.

-   **Preference Panes** are use to provide interfaces for system configuration.
    Located in `/Library`.

-   
