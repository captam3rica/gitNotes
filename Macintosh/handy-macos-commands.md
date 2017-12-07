# Handy mac OS Commands & File Locations

Precursors to using some of the commands below. **PLEASE** be sure to make a backup copy of any files before altering them.

## Terminal Hacks

### OS Version

`$ sw_vers`

### Show Hidden Files & Folders

`$ defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder`

### Unhide ~/Library

`chflags nohidden ~/Library`
`chflags hiddent ~/Library` - to hide it again

### Edit Your '$PATH'

`sudo launchctl config user path "/usr/local/bin:$PATH" && sudo launchctl reboot`

### Turn on "Install from Anywhere" in GateKeeper.

- This is a setting that Apple decided to remove with the release of Mac OS Sierra.

`sudo spctl --master-disable`

### Allow Keyboard Keys to repeat

`defaults write -g ApplePressAndHoldEnabled -bool false`

### Change ScreenShot File Type to PDF

`defaults write com.apple.screencapture type PDF`

### Remove Smooth Scrolling

When you hit spacebar in a browser, the page will automatically scroll with a smooth transition effect. Sometimes this animation can be clunky. To remove this setting use the following.

`defaults write -g NSScrollAnimationEnabled -bool NO`

### Remove the Bouncy Elastic Effect in Finder and Other Apps

`defaults write -g NSScrollViewRubberbanding -int 0`

### Force Empty Trash

`$ rm -rf ~/.Trash/*`

### Convert Plist to xml and binary

`plutil -convert xml1 </path/to/property/list>`  
`plutil -convert binary </path/to/property/list>`

### Remove a Package Receipt

`sudo pkgutil --forget [com.name.of.package.pck]`  

or   

`sudo rm -rf /var/db/receipts/[name of receipt]`

### Force Apple Setup Assistant to launch again

1. Boot to single user mode

`left shft + S`

2. Before mounting the file system we need to run an FS check

`/sbin/fsck -fy`

3. Now mount the file system

`/sbin/mount -uw /`

4. Remove the following file to force Setup Assistant to come back

`rm /var/db/.AppleSetupDone`

## Application Specific ...

### Issues with DropBox Starting Up

- There is a hidden folder, under the Users folder, called ".dropbox".
Remove that folder then try to launch DB again. It should allow the user
input their login credentials.

### Microsoft Word Hacks

#### Find Unsaved Word Docs

`~/Library/Containers/com.microsoft.Word/Data/Library/Preferences/AutoRecovery/`

- May need to rename .docx to .doc if the file does not open  

#### UserTemplates Location

- Word Templates Location: `/Users/$username/Library/Application Support/Microsoft/Office/UserTemplates/`

## User Modifications

### For the username to be an admin & add that user to the admin group wheel

`sudo dseditgroup -o edit -a $username_to_add -t user admin`  
`sudo dseditgroup -o edit -a $username_to_add -t user wheel`  

### Change the shortname (username) of a particular user

- Backup the current username to something like [username.old]

  `sudo chown -R [newshortname] /Users/[newshortname]`

- Reset a User Password from Single User Mode

  - `cmd + S ` to enter single user Mode


    $ /sbin/fsck -fy
    $ /sbin/mount -uw /
    $ launchctl load /System/Library/LaunchDaemons/com.apple.opendirectoryd.plist
    $ dscl . -passwd /Users/whitsongordon [new password here]


### Manipulate User Accounts & Passwords

  `pwpolicy [-v] [-a authenticator] [-p password] [-u username | -c computername]
                [-n nodename] command command-arg`

### Enable the root user

`dsenableroot -d`

### Force the user to be admin  

`$ sudo dseditgroup -o edit -a jwils156 admin`

### Mount User's ***Something*** folder to ***Scan*** folder

    sudo -u $user -H sh -c "mount_smbfs
    //'your.computer.domain;$user@something.server.name/location/of/folder"

**Connect to shares using a different user**

`smb://<username>:*@<servername>`

## Security

### XProtect and Gatekeeper

- *XProtect* is technically a feature builtin to *File Quarantine*
- Just sits between you and the Web.
- Contains an Apple curated list of bad software

**Location**
- `/System/Library/Core Services/CoreTypes.bundle/Contents/Resources/XProtect.plist`

**Definition Updates**

- Come through the *App Store* in the form of security updates

## Network Stuff

**Reset Network configs**

`/Library/Preferences/SystemConfiguration`

- Move the **NetworkInterfaces.plist** file to the trash or rename it just encase removing it does not solve the problem.
-
**Edit Hostname**

`$ sudo scutil --set HostName [new-hostname]`  
`$ sudo scutil --set ComputerName [new computer name]`

**Neighbor Discovery Cache**

`ndp -- control/diagnose IPv6 neighbor discovery protocol`

**Reload /etc/hosts file manually & reload DNS service**

`sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder`

## Storage ...

### Convert to APFS

[Apple Developer - APFS](https://developer.apple.com/library/content/documentation/FileManagement/Conceptual/APFS_Guide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40016999-CH1-DontLinkElementID_19)

**APFS Driver Location**

- /usr/standalone/i386/apfs.efi

**Using the hfs_convert_apfs tool**

`hfs_convert_apfs -x -v --efi --dry-run /usr/standalone/i386.apfs.efi /dev/disk0s2`

**Using diskutil**

`diskutil APFS convert /dev/[disk#]`

`diskutil apfs createContainer /dev/disk1s1`
`diskutil apfs addVolume disk1s1 APFS`

- This will call **hfs_convert_apfs** during the conversion process

**hdiutil**

`hdiutil create -fs APFS -size 1GB for.sparseimage`

**APFS Disk Check**

The fsck_apfs utility verifies and repairs APFS containers and volumes.

  `fsck_apfs`

### Boot Options

**To disable AutoBoot features use the following command from Terminal**

`$ sudo nvram AutoBoot=%00`

**To enable AutoBoot run the following command from Terminal**

`$ sudo nvram AutoBoot=%03`

**NOTE**: MacBook Pro 2016 with Thunderbolt 3 will startup automatically while opening the lid or connecting the power adapter.

## Java ...

#### Removing Java

`sudo rm -fr /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin`  
`sudo rm -fr /Library/PreferencePanes/JavaControlPanel.prefpane`

### Find Java Version

`./Library/Internet\
Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java -version`

## Diagnostics & Testing

### Local Diagnostics

- Hold `cmd+D` at boot

### Target Disk Mode

- Hold the T key while the system is booting.

### System Management Controller (SMC) Reset

- **For MacBook Air, MacBook Pro Retina, and MacBook Pros with non-removable batteries**
  - Press and hold `shft + opt + ctrl + power button` with the MagSafe adapter connected.

- **MBs and MBPs with removable batteries**

  1. Remove battery
  2. Remove the MagSafe charger
  3. Hold power button for 10 seconds

- **For iMacs**

  1. Shutdown
  2. Remove the power cable
  3. Hold power button for 10 seconds

- **Fixes**

  - Issues with cooling fans and fan management
  - Power and battery management issues
  - Light and improper lighting management
  - Video and/or external video issues
  - General performance and functionality issues concerning hardware

### PRAM aka NVRAM Reset

- Press and hold `cmd + opt + P + R`

- **Fixes**

  - Reset default boot device
  - Clear cache
  - Clear RAM
  - Help to resolve boot issues

## Installers & Install media

### Convert DMG to installosx

`hdiutil convert apple.dmg -format UDTO -o apple.iso`

### Create OS X install media:

    sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/[usb device] --applicationpath /Applications/Install\ macOS\ High\ Sierra.app/ –nointeraction

## Munki related

### Path to *Munki* Files

/usr/local/munki

### Sal Client Setup

`$ defaults write /Library/Preferences/com.github.salopensource.sal ServerURL http://something.com`  

`$ defaults write /Library/Preferences/com.github.salopensource.sal key [yourreallyreallylongkey]`

### Removing All-in-one Puppet Scripts

    rm /Library/LaunchDaemons/com.puppetlabs.mcollective.plist
    rm /Library/LaunchDaemons/com.puppetlabs.puppet.plist
    rm /Library/LaunchDaemons/com.puppetlabs.pxp-agent.plist

### If the OS X upgrade package fails to install:

`com.googlecode.installosx.pkg.plist`
`com.googlecode.installosx.pkg.bom`

## SSH Keys

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
