# Keychain Fixes

-   Keychain Access utility

    Note: Keychain FirstAid does not exist any more as it was possible for someone to masquerade as the keychain server. Apple decided to remove the functionality.

-   Change the password for the keychain login if it did not update when you changed your login password. Just input your old login password and then your new password.

**Locations**

-   ~/Library/Keychains
-   /Library/Keychains
-   /System/Library/Keychains

**Transfer Keychain**

-   https://support.apple.com/kb/PH20120?viewlocale=en_US&locale=en_US

-   cmd + shift + G and navigate to ~/Library/Keychains

-   Copy the "login.keychain" file

-   Change the name of the keychain file so that it doesn't get confused with other keychains on the new computer.

-   Launch Keychain Access on the new Mac

-   Open the File menu and click "Add Keychain" and browse the file that was copied.

**Managing Passwords**

-   Auto-lock the keychain 

