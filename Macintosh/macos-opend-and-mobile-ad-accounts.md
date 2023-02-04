# MacOS Open Directory & AD Mobile Accounts 

**Reset if Connected to a Network via Ethernet**

    Boot into single user mode (cmd + S at boot)
    Type fsck -fy (file system consistency check and interactive repair)
        -f: force the check "clean" filesystems when preening
        -y: to assume yes to any questions invoked by fsck
    mount -uw /
        -u: indicates that that status of an already mounted file system should be changed (write, read-write, etc.)
        -f: force the revocation of write access when trying to downgrade a filesystem mount status from read-write to read-only.
        -w: mount the filesystem as read-write
    launchctl load /System/LaunchDaemons/com.apple.DirectoryServices.plist (interacts with launchd to inspect daemons, agents and XPC services)
        load | unload: load specified configuration files or directories of config files. All jobs will be loaded until the first is allowed to start. Allowing non-root write access to the /System/Library/LaunchDaemons dir will not allow the system to boot.
    dscl . -passwd /Users/<username> <password> (replace user with needed user and password with the desired password)
        Check below if reset password for Open Dir Mobile account
    shutdown -r now

Note:

    If FileVault is enabled, the user will still be prompted for the old password, but after entering the old password the encrypted archive will be updated to the new password.
    If done on an Open Dir Mobile Account, the passwords will not be in sync and will not allow the user to authenticate to the Open Dir server. To fix this you will need to delete the locally cached password.
        Make sure the computer is connected to a network in a way that allows it to connect to the Open Dir server.
        dscl . -delete /Users/<username>
            FileVault will not work, as in, it will not auto mount, but can be manually mounted from the users home folder.

**Other Commands**

    dsconfigad -passinterval <value>: Set how often the computer trust account password should be changed (default 14). causes the computer and AD to sync at a faster rate.
    dsconfigad -preferred <name of preferred DC> (this can also be set in Directory Utility UI)

**Findings**

    Most of the time, the only fixes for this are to connect the computer to an Ethernet cable or force the computer to unbind then bind to the domain.
    stale cached record - refers to a .plist file that is created for the user (/var/db/dslocal/nodes/Default/users) when the account is cached.
        delete the cached file, reboot the machine, then try to login with the user. A new cached login file should be create at this point.
        The plist doesn't seem to be in this location on El Cap
        I need to figure out which plist contains the mobile account information for my user

