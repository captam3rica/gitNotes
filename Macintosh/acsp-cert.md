# Apple Certified Support Professional
Last Updated: Tue Jan  2 15:35:46 EST 2018

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

## User Accounts

### Types

**Standard Account**

-   Default account type
-   Member of staff group
-   Read access to most items, preferences, and applications
-   Full control of its `Home` folder
-   Can install apps and updates from the App Store
-   Cannot make changes that will affect other users
-   Cannot manually modify the `/Applications` folder
-   Cannot install many of the 3rd party apps offered outside of the App Store
-   Cannot change account photo
-   Cannot access Advanced account settings

**admin**

-   Must be at least one

-   Part of staff and admin local accounts 

-   By default does not have access to documents and folders owned by other
    users.

**guest user**

-   The guest home folder is deleted upon logout.
-   Can restart and shutdown computer.

**Sharing Only**

-   No access to terminal
-   No home folder
-   Primarily for file sharing 

**root**

-   Unlimited access to everything 
-   Generally disabled by default
-   No password by default

**group accounts**

-   staff: everyone
-   admin: admins
-   wheel: root

### Account Attributes 

-   `/var/db/dslocal/nodes/Default/users`: accessible only by root

-   user id, group, account name, full name, home dir, login shell, uuid, alias
    name.

-   Staff if primary group for all local users 

-   User ID is unique locally only

-   Users cannot have the same full name

-   /bin/bash is the default share

-   uuid aka guid (globally unique identifier)

-   The alias name is used to associate the user account with services like
    iCloud.

### Parental Controls

**apps**

-   built-in camera
-   game center
-   mail
-   specific apps

**web**

-   Safari with content filtering 
-   list of allowed websites 
-   a combination of both

**stores**

-   itunes 
-   ibooks 
-   explicit music
-   explicit content
-   use age ratings

**time**

-   weekdays 
-   weekends
-   bedtime

**privacy**

-   privacy changes

**other**

- dictation
- printers
- scanners 
- cds/dvd
- profanity
- dock
- simplified ui

### Login

-   Fast user switching is enabled by default when multiple users exist on the
    system. Not recommended when network accounts are in use.

### Managing User Folders 

-   Data can be transferred between two Macs via firewire, thunderbolt, or
    ethernet. 

-   The User's home folder can be copied to a new Mac. Then, in System
    Preferences a new user can be created with the same name as the home folder
    that was transferred. 

    -   This can also be done via termial commands.

-   To restore a user account

    Note: Take a screen shot of the account attributes under the `Advanced`
    section of the user account.

    1.  Delete the user account but choose to save the account in a `dmg`
    2.  Go to the `Deleted Users` folder and copy the account to the desktop
    3.  Duplicate the `dmg` so that a folder is created with the account
        contents inside.
    4.  Drag the user's account folder to the `Users` folder
    5.  Create a user account with the same name as the copied user folder
    6.  Make sure that the `Advanced` information is the same and the UUIDs are
        different. 

### Passwords & System Security

-   Apple ID password may be used to reset a local account password even if the
    local account is not linked to an apple ID.

-   System Passwords: 

    **Master password**: reset standard, legacy, and administrative filevault
    accounts. It is separate from any user account. It is not set in new
    installation. If a master password has not been set, then It is most 
    likely the same as password used for the admin account. If the master
    password was set then the profile was migrated, the master password is
    transferred to the new profile.

    **Fireware password**: saved to firmware chip and not linked to any user
    accounts. All startup options are disabled if fireware password is set. 

-   Other Passwords:

    **Keychain**: Apple's password vault

    **Resource passwords**

-   Local account passwords can be changed from **Security & Privacy**, **Users
    & Groups**, or from the **Terminal**.

-   If an account is linked to an Apple ID and the password for said ID is
    updated, the user will not be affected until the logout and back in to the
    account that is linked to that ID.

-   The master password can be managed from **Users & Groups**

-   The **Firmware** password can be set from **Recovery**

-   Resetting a local user account password: Users & Groups, Master password,
    Apple ID, Apple ID at login if legacy file vault is not used, a previous
    login to iCloud, and the local password is different from the Apple ID,
    FileVault recovery key at startup, and From Mac Recovery useing
    `resetpassword` in a Terminal window.

    If FileVault is in use, local user passwords cannot be changed using the
    Master password or Apple ID.

    For legacy FileVautl: If neither the Legacy FV password or the master
    password are known, there is no way to recover the user's data.

    Upon next login, the user will be prompted to update or create a new
    Keychain password. If a new keychain is created, the old data will no longer
    be accessible.

    The Master password can be reset by deleting the master keychain files:
    `/Library/Keychains/FileVaultMaster.cer` & `FileVaultMaster.keychain`. A new
    master password can be set through **System Preferences**

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

