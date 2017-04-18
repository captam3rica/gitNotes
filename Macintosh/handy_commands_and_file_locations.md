# Handy Commands & File Locations

Precursors to using some of the commands below. PLEASE be sure to make a backup copy of any files before altering them.

## Commands

### User Modifications

For the username to be an admin and add that user to the admin group wheel.

`sudo dseditgroup -o edit -a $username_to_add -t user admin`  
`sudo dseditgroup -o edit -a $username_to_add -t user wheel`  

- Change the shortname (username) of a particular user
  - Backup the current username to something like [username.old]

`sudo chown -R [newshortname] /Users/[newshortname]`

- Reset a User Password from Single User Mode

`cmd + S ` to enter single user Mode

    $ /sbin/fsck -fy
    $ /sbin/mount -uw /
    $ launchctl load /System/Library/LaunchDaemons/com.apple.opendirectoryd.plist
    $ dscl . -passwd /Users/whitsongordon [new password here]

Manipulate User Accounts & Passwords

  `pwpolicy [-v] [-a authenticator] [-p password] [-u username | -c computername]
                [-n nodename] command command-arg`

Enable the root user:

`dsenableroot -d`

Force the user to be admin:  

`$ sudo dseditgroup -o edit -a jwils156 admin`

Mount User's Scan folder to "Scan" folder

    sudo -u $user -H sh -c "mount_smbfs
    //'win.kennesaw.edu;$user@scan-pass01.win.kennesaw.edu/CampusFolders/$user' /Volumes/Scan"

Connect to shares using a different user

`smb://<username>:*@<servername>`

Dropbox having issues starting up

- There is a hidden folder, under the Users folder, called ".dropbox".
Remove that folder then try to launch DB again. It should allow the user
input their login credentials.

### Microsoft Word Hacks

Find Unsaved Word Docs

`~/Library/Containers/com.microsoft.Word/Data/Library/Preferences/AutoRecovery/`

- May need to rename .docx to .doc if the file does not open  

Template Location

- Word Templates Location: `/Users/$username/Library/Application Support/Microsoft/Office/UserTemplates/`

### Network Stuff

Neighbor Discovery Cache

`ndp -- control/diagnose IPv6 neighbor discovery protocol`

Reload /etc/hosts file manually & reload DNS service

`sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder`

### System Stuff

Turn on "Install from Anywhere" in GateKeeper. This a setting that Apple decided to remove with the release of Mac OS Sierra. However, it can be re enabled with the command below.

`sudo spctl --master-disable`

Use pwpolicy to create an organization wide password policy

`$ pwpolicy`

OS Version:

`$ sw_vers`

Edit Hostname:

`$ sudo scutil --set HostName [new-hostname]`  
`$ sudo scutil --set ComputerName [new computer name]`

Show Hidden Files & Folders

`$ defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder`

Unhide ~/Library

`chflags nohidden ~/Library`
`chflags hiddent ~/Library` - to hide it again

Force Empty Trash

`$ rm -rf ~/.Trash/*`

Convert Plist to xml and binary

`plutil -convert xml1 </path/to/property/list>`  
`plutil -convert binary </path/to/property/list>`

- make sure to make a copy before converting the file.

Allow keys to repeat

`defaults write -g ApplePressAndHoldEnabled -bool false`

To Remove a Receipt

`sudo pkgutil --forget [com.name.of.package.pck]`  
or   
`sudo rm -rf /var/db/receipts/[name of receipt]`

Removing Java

`sudo rm -fr /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin`
`sudo rm -fr /Library/PreferencePanes/JavaControlPanel.prefpane`

Find Java Version:

`./Library/Internet\
Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java -version`

Reset Network configs & other settings:

`/Library/Preferences/`

- Move the "SystemConfiguration" folder to the trash or a different
location or rename it just encase removing it does not solve the problem.

### Installers & Install media

Convert DMG to installosx

`hdiutil convert apple.dmg -format UDTO -o apple.iso`

Create OS X install media:

`sudo /Applications/Install\ OS\ X\ El\
    Capitan.app/Contents/Resources/createinstallmedia --volume
    /Volumes/elcapitaninstaller --applicationpath /Applications/Install\ OS\
    X\ El\ Capitan.app –nointeraction`

If the OS X upgrade package fails to install:

`com.googlecode.installosx.pkg.plist`
`com.googlecode.installosx.pkg.bom`

### Munki related

- /usr/local/munki

Client Setup

- `$ defaults write /Library/Preferences/com.github.salopensource.sal ServerURL http://something.com`  
- `$ defaults write /Library/Preferences/com.github.salopensource.sal key [yourreallyreallylongkey]`

Removing All-in-one Puppet Scripts

- `rm /Library/LaunchDaemons/com.puppetlabs.mcollective.plist`
- `rm /Library/LaunchDaemons/com.puppetlabs.puppet.plist`
- `rm /Library/LaunchDaemons/com.puppetlabs.pxp-agent.plist`

### SSH Keys

Generate Keys

- ssh-keygen -t rsa -b 4096 -C "Label the key here"

Push Keys

- cat ~/.ssh/shhkey.pub | ssh user@remoteserver "mkdir -p ~/.ssh/ && cat >> ~/.ssh/authorized_keys"

## File Locations

- /Library/Printers/guestqueue
- /Library/Preferences/ManagedInstalls.plist
- Printer Drivers: /Library/Printers/PPDs/Contents/Resources
- munki downloads that have not yet been installed - /Library/Managed\
Installs/Cache
