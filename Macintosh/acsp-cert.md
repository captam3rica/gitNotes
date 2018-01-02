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

-   Domain priority

    User > Local > Network > System

-   App containers at `~/Library/Containers`

-   Fonts

    -   bitmap, TrueType, OpenType, PostScript, etc
    -   Font Book
    -   `/Library/Fonts \Removed` and `~/Library/Fonts \Removed`

## File System Metadata & Search

-   Darwin kernel
-   BSD - Berkeley Software Distribution
-   NeXTSTEP
-   Stationary pad - creates a separate copy of the original file for editing
-   Lock - stops the file from being deleted
-   Edit tags from Finder preferences 
-   **Spotlight Search**

    -   Local and shared files
    -   Servers
    -   AirDisk volumes 
    -   Time Machine backups
    -   iCloud drive
    -   Internet Searching
    -   History
    -   Location info
    -   User info
    -   Not the contents of other user document folders

-   **Spotlight** index file: `~/.Spotlight-V100`
-   Mail data is index at: `~/Library/Mail/V2/MailData/Envelope \Index`
-   Spotlight will not index readonly systems and files

### Time Machine

-   backupd

-   Ignores tmp files, spotlight indexes, Trash, Log files, cache, & Exempted
    items

-   Keeps hourlies for 24hrs, Dailies for 7 days, and Monthlies until the backup
    drive is full.

-   Local snapshots are taken if the backup disk is not present. Then, sent to
    the backup disk when it is connected. `~/.MobileBackups`

-   Powernap will allow the system to backup after sleeping.

-   Network backup locations cannot be encrypted by Time Machine

## Apps & Processes

-   Carbon (outdated), Cocoa, and Java 

-   X11 is no longer included with macOS - must be downloaded separately 

-   Open source: 

    -   macports.org
    -   developer.apple.com/opensource

-   apple.com/business/vpp

-   Can create a new Apple ID that does not require a CC through iTunes.

-   Payment options: CC, debit, content codes, store credit (gift cards),
    Alipay, mobile phone billing, Bank cards (CN only)

-   Mac App Store can be disabled fro standard accounts through Parental
    Controls.

    -   Browsers would need to be restricted to stop 3rd party app installation
        as well. 
    -   Software blacklists
    -   Restricted software entry

-   iCloud Family share (managed in icloud sys prefs)

    -   Up 6 apple IDs
    -   Must have a payment option setup 
    -   13 years or older
    -   music, books, apps, and movies
    -   Adults must authorize any apps in the app store

-   Uninstall: LaunchPad, Trash, or Custom Uninstaller 

### App Security 

-   All apps from the app store must use sandboxing 

-   Mac app store apps must be code signed

-   Developer ID can be used to sign apps outside of the app store

-   **Quarantine**: scans apps before installation is allowed to continue.

    -   Remove the quarantine message: `xattr -d com.apple.quarantine [app path]`
    -   Also: `xattr -dr com.apple.quarantine [dir path]`
    -   Quarantine functionality may not be available for some 3rd party apps or
        for apps that are copied from removable media.

-   A **Deny** list is used to block malicious software (Xprotect):
    `/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.plist`

-   Turn off Safari plugins from **`Preferences > Security > uncheck Allow
    Plugins`**

-   **Gatekeeper**

    -   Mac App Store apps only
    -   Mac app store and identified devs (default)
    -   Anywhere

-   To install an unidentified 3rd party app: **`Go to App location in Finder >
    Right click the app > select Open > select Open in the dialogue window`**
    (if this does not work thne the **Anywhere** option will need to be set in
    **Gatekeeper**)

### Doc Management

-   Per user, you can set the app that you want to open a file through the **Get
    Info** menu for the file.

-   Auto Save - supported apps will auto save docs every so often. Auto save
    occurs when making significant changes to a file, closing the doc, closing
    the app, selecting **Finder**, Accessing the doc from another app, every 5
    minutes

    To turn off Auto Save: **`System Prefs > General > check the box "Ask to
    keep changes when closing documents"`**

-   **Versioning** is utilized for apps that support this feature.

    **`File > "Rever To" or "Last Saved" or "Browse Saved Versions"`**

    -   Versioning may not work with File Shares and shared file locations 

-   **Automatic Resume** during loss of power or inappropriately closing the app

-   **iCloud**: `~/Library/Mobile \Documents`

## App Processes & Extensions 

### Memory

-   Virtual memory is dynamically allocated

-   Compression optimization 

-   Protected memory for apps 

-   64-bit mode allows apps to potentially access more than 4GB or RAM

### App Extensions 

-   Preview is an example of an extension 

-   File provider Extensions allow other apps to access other areas through
    finder

-   Actions Extensions - add other buttons for special features 

-   Finder sync extensions - allow the addtions of file syncing to apps like
    Dropbox

-   Notifications center 

### Monitoring 

-   through the Activity Monitor 
-   CPU, Mem, Energy, Netork, Disk
-   Change the **VIEW** to see different processes and their owners 

## Troubleshooting

-   **Steps** 

    1.  Restart the app   
    2.  Try another known good working document   
    3.  Try another user account   
    4.  Check log files   

    5.  Delete cache files - `/Library/Caches`, `~/Library/Caches`, or
    `~/Library/Saved \Application \State`

        Font cache can be cleared from within **Safe Boot**

    6.  Replace preference files   
    7.  Replace app resources

### Preference Files 

-   **Preference File Locations**

    -   `/System/Library/Preferences`
    -   `/Library/Preferences`
    -   `~/Library/Preferences`
    -   `~/Library/Containers/[bundleID]/Data/Library/Preferences`
    -   `~/Library/Group \Containers/[BundleID]/Library/Preferences`

-   `cfprefsd` - provides preferences services for the CFPreferences and
    NSUserDefaults APIs. This process can be restarted after making a change to
    a preference file to clear the cache. Make sure to quit to process owned by
    the appropriate user.

### Diagnostics

-   through the **Console**
-   User diagnostics: `~/Library/Logs/DiagnosticReports`
-   System diagnostics: `/Library/Logs/DiagnosticsReports`

