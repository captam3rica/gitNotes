# Handy Commands & File Locations

## Commands

Turn on "Install from Anywhere"

`sudo spctl --manster-disable`

Convert DMG to installosx

`hdiutil convert apple.dmg -format UDTO -o apple.iso`

Reset a User Password from Single User Mode

`cmd + S ` to enter single user Mode

    /sbin/fsck -fy
    /sbin/mount -uw /
    launchctl load /System/Library/LaunchDaemons/com.apple.opendirectoryd.plist
    dscl . -passwd /Users/whitsongordon [new password here]

Neighbor Discovery Cache:

`ndp -- control/diagnose IPv6 neighbor discovery protocol`

Enable the root user:

`dsenableroot -d`

Use logcheck to automatically scan log files and notify you of any unusual
activity:

    $ logcheck

Use pwpolicy to create an organization wide password policy:

    $ pwpolicy

OS Version:

    $ sw_vers

Edit Hostname:

    $ sudo scutil --set HostName <new-hostname>

Connect to shares using a different user:

    $ smb://<username>:*@<servername>

Show Hidden Files & Folders:

    $ defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder

Force Empty Trash:

    $ rm -rf ~/.Trash/*

Force the user to be admin:

    $ sudo dseditgroup -o edit -a jwils156 admin

Convert Plist to xml and binary:

    plutil -convert xml1 </path/to/property/list>
    plutil -convert binary </path/to/property/list>

Note: make sure to make a copy before converting the file.

Allow keys to repeat:

    defaults write -g ApplePressAndHoldEnabled -bool false

Create OS X install media:

    sudo /Applications/Install\ OS\ X\ El\
    Capitan.app/Contents/Resources/createinstallmedia --volume
    /Volumes/elcapitaninstaller --applicationpath /Applications/Install\ OS\
    X\ El\ Capitan.app –nointeraction

Reload /etc/hosts file manually & reload DNS service:

    sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder

Mount User's Scan folder to "Scan" folder:

    sudo -u $user -H sh -c "mount_smbfs
    //'win.kennesaw.edu;$user@scan-pass01.win.kennesaw.edu/CampusFolders/$use
    r
    ' /Volumes/Scan"

Removing Java:

    sudo rm -fr /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin
    sudo rm -fr /Library/PreferencePanes/JavaControlPanel.prefpane

Find Java Version:

    /Library/Internet\
    Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java -version

Reset Network configs & other settings:

    /Library/Preferences/

*   Move the "SystemConfiguration" folder to the trash or a different
location or rename it just encase removing it does not solve the problem.

To Remove a Receipt:

    sudo pkgutil --forget <com.name.of.package.pck>

*   or go to /var/db/receipts and search for and delete the receipt that you
need.

Dropbox having issues starting up:

*   There is a hidden folder, under the Users folder, called ".dropbox".
Remove that folder then try to launch DB again. It should allow the user
input their login credentials.

If the OS X upgrade package fails to install:

    com.googlecode.installosx.pkg.plist
    com.googlecode.installosx.pkg.bom

## File Locations

*   /Users/$username/Library/Application Support/Microsoft/Office/User
Templates/

*   /Library/Scripts/KSU/studentprint2  

*   /Library/Printers/guestqueue

*   /Library/Preferences/ManagedInstalls.plist

*   /Library/LaunchAgents/ (run as the user)

*   /Library/LaunchDaemons/ (Run as root)

*   /private/var/db/receipts

*   Printer Drivers: /Library/Printers/PPDs/Contents/Resources

*   munki downloads that have not yet been installed - /Library/Managed\
Installs/Cache

*   Network Utility: /System/Library/CoreServices/Applications/Network
Utility.app
