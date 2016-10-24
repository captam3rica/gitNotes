# Share VirtualBox VMs

1. Put the virtual machine in a location that everyone will have access to: /Users/Shared/ is a good place to start.
2. Configure the virtual machine
3. Open a terminal:

    Changed to the VirtualBox dir in your user library folder  
    `cd ~/Library/VirtualBox`

    copy the xml file to folder that is sharing the VM
    `cp VirtualBox.xml /Users/Shared/VirtualBox\ VMs/`

    Creates a back up of the xml file
    `mv VirtualBox.xml VirtualBox.xml.bak`

    Create a symbolic link from the VirtualBox.xml file in the Shared location to the VirtualBox folder in ~/Library/VirtualBox
    `ln -s /Users/Shared/VirtualBox\ VMs/VirtualBox.xml`

4. Set the permissions on /Users/Shared/VirtualBox\ VMs/VirtualBox.xml so that all users can read and write to the file.

    `sudo chmod -R 775 /Users/Shared/VirtualBox\ VMs/VirtualBox.xml`

5. Setup a LaunchDaemon and shell script so that the permissions will remain set to allow all users to access the virtual machine. Mac will change the ownership to the last user to use the virtual machine, which will stop other users from accessing it.

    Edit the user and group accordingly

        /usr/bin/find /path/to/VMs/ ! -user user -exec chown -R user:group {} \;
        /usr/bin/find /path/to/VMs/ ! -perm 775 -exec chmod -R ug+rwx {} \;

    LaunchDaemon

        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
        <dict>
        <key>Label</key>
        <string>com.company.virtualboxpermissionsfix</string>
        <key>ProgramArguments</key>
        <array>
        <string>sh</string>
        <string>/Library/Scripts/VirtualBox/virtualbox_permissions_fix.sh</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>StartInterval</key>
        <integer>10</integer>
        </dict>
        </plist>

Thanks to [Derflounder](https://derflounder.wordpress.com/2011/10/26/configuring-a-virtualbox-vm-to-be-shared-by-multiple-users-on-the-same-mac/)
