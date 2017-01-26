# Hardening MacOS Server

## ToDo ...

- log retention - 30+
- Global Password policy
- Separate Admin logins
  - AD group from windows server (AppleAdmins)
    - Ray
    - John
    - Thomas
    - Matt
  - Test this on a server
- Disable Root (check to make sure the is across all servers)
- Possible other AV software (BitDefender Paid, ClamAV OpenSource but not easily installed)

## General

- Recent Items: None
- Uncheck "Allow Handoff between this mac and your icloud devices"

## System Preferences
NOTE: If not otherwise mentioned below, the setting can remain default

### Security & Privacy

#### General

- Require password **immediately**
- Add a message to lock screen
  - All connections to this server are monitored and recorded. Disconnect IMMEDIATELY if you are not an authorized user!
- Disable auto login
- Allow apps from Mac App Store and identified developers

#### Application Firewall

- Turn of Application Firewall

##### Allow Incoming connects to

- SMB
- SSH
- Remote Management (ARD)
- Screen Sharing

##### Optional Depending on Requirements

- ARDAgent
- bootpd: for DS
- caldavd
- DeployStudioServer: for DS
- kdc
- launchd
- manster: the postfix master process
- NetBootClientStatus
- nfsd
- rpc.lockd
- rpc.rquotad
- rpc.statd
- rpcbind
- rpcinfo
- screensharingd
- sdd
- servermgr-listener
- tftpd

#### Privacy

- Allow location services for things like NTP servers

#### Advanced
- Log out after **10** minutes of inactivity
- Require admin password for system-wide preferences

### Spotlight

- Narrow search results down to only what is absolutely neccessary. (i.e. Applications, Calculator, Documentation, Documents, Folders, PDF Documents, System Preferences)
- Under privacy, add specific folders, documents, or shares do not need to be made searchable by Spotlight.

### Energy Saver

- Set Computer Sleep & Display Sleep settings to a reasonable timeframe.

### Sharing

- Configure Share settings to what is needed for the server to function. This will differ depending on the time of server.

### BackUps

- Make sure to use some time of back up system. Whether it is TimeMachine or another Enterprise solution.

### Users & Groups

- Configure user settings as needed
- Do not allow automatic login
- root should rarely, if ever, be used directly. Create another administrative user and use `sudo` to do anything as root.

### Date & Time

- Default NTP server should be time.apple.com, but this can be configured to point at a know trusted NTP server

## Anti Virus

- SCEP client

## MacOS Server Settings

### Adaptive Firewall (Blocks IP addresses that have to many failed login attempts)

**Start Addaptive Firewall**

`sudo /Applications/Server.app/Contents/ServerRoot/usr/libexec/afctl -c`  
`sudo /Applications/Server.app/Contents/ServerRoot/usr/libexec/afctl -f`

**Flags**

-a - add IP address to blacklist  
-r - remove IP address from blacklist  
-w - whitelist an IP address  
-x - remove from whitelist  
-d - disable  
-e - enable

**Check AF Stats**

`/Applications/Server.app/Contents/ServerRoot/System/Library/CoreServices/AdaptiveFirewall.bundle/Contents/MacOS/hb_summary`

**Config Plist**

`/etc/af.plist`

**Service Name**

`/Applications/Server.app/Contents/ServerRoot/usr/libexec/com.apple.afctl.plist`

## SSH Login Banner

- Create a file call sshd_banner and add a message. Then, move it to `/etc/ssh/`
- Edit `/etc/ssh/sshd_config`

  - Find the lines below and edit as follows:

        # no default banner path
        Banner /path/to/banner/file

- Reload the sshd service

      sudo launchctl stop com.openssh.sshd
      sudo launchctl start com.openssh.sshd

## Resources

- Apple Service Ports: https://support.apple.com/en-gb/HT202944
- Netboot: https://support.apple.com/en-us/HT203437
