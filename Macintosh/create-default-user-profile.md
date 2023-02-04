# Create a Default User Profile Template

-   Everything must be done as root. Even sudo doesn't grant enough rights to get into the /System/Library/User\ Template/ folder.

-   setup the account as desired. Dock icons, Finder prefs, etc.

-   `mv /System/Library/User\ Template/English.lproj /System/Library/User\ Template/orig-English.lproj`

-   'ditto' the account (as root) to /System/Library/User\ Template/English.lproj ditto /Users/user /System/Library/User\ Template/English.lproj

-    delete the com.apple.sharedfilelist 

    `rm -r /System/Library/User\ Template/English.lproj/Library/Application\ Support/com.apple.sharedfilelist/`

-   edit the /System/Library/User\ Template/English.lproj/Library/Preferences/com.apple.dock.plist 
    and remove "_CFURLString" for Downloads. You'll need an XML editor for this. I used Pref Setter

-   Delete all the Keychains 

    `rm -rf /System/Library/User\ Template/English.lproj/Library/Keychains/*`

-   Delete the .bash* files from /System/Library/User\ Template/English.lproj/ 

    `rm -rf /System/Library/User\ Template/English.lproj/.bash`

-   Change ownership of the /System/Library/User\ Template/English.lproj folder: 

    `chown -R root:wheel /System/Library/User\ Template/English.lproj`
    `chmod -R 755 /System/Library/User\ Template/English.lproj`

-   If everything goes smoothly, you should have a default account setup for 
    all new users of that device.

