# Working with Profiles

Just some info that I found while searching for profile packaging solutions.

## Basic Steps

1. Have a package install the profile somewhere on the computer
2. Run the command `/usr/bin/profiles` (as root) in a postinstall script to install the profile

### Notes

- Can install the profile using something like AutoDMG
- The Profiles command will not be available so we need to install it to a special place that Mac OS will look at on boot: /private/var/db/ConfigurationProfiles/Setup
- We will need to clear the .profileSetupDone file if it exists due to the volume being booted in the past.
- An important distinction here is to set the package to use the full path starting with /private/var rather than simply /var, which is actually a symlink. It's been reported to have caused issues in some cases before, and it's simply not correct: install files to real paths rather than symlinks whenever possible.

### Packaging Rules to Follow

- DO check that your package works from the command line with the following conditions: when a user is logged in, when no-one is logged in, and when installing to a non-boot volume.
- Don't require reboots when reloading a service or driver can accomplish the same outcome.
- Do not use an "Application First Run" script that requires administrator privileges to correctly setup the Application.
- Don't use post-install scripts to create or modify files – do this in the package payload.
- Do exit a script with 0 on success, or a non-zero number if there are errors.
- Do provide an uninstaller or uninstall script.
- Do keep your config data and cache data separate.

#### Nameing Conventions

- Do list your vendor and product name in your package name.
- Do give packages meaningful names with version numbers.

## Pushing Profile Settings with Munki Profile support

- Watch to see which plists change when modifying or launching an app after changes have been made.

### Creating the Profile

- Controling the preference files in these locations `~/Library/Preferences or /Library/Preferences` using Configuration Profiles.
- Convert regular preference files to configuration files by using the following script:

      ./mcxToProfile.py --plist ~/Library/Preferences
      com.fetchsoftworks.Fetch.License.plist
      --identifier FetchLicense --manage Once

  - --managed Once sets the setting one time then after that it does not enforce the setting allowing the user to change if needed.
  - --Often - settings the preference every login
  - if `--manage` is not set, the setting is enforced on every login and the user cannot change the setting.
- PayloadDisplayName: can also use `--displayname` during creation
- PayloadOrganization: can also use `--organization` during creation
- PayloadDescription

### Testing the Profile

- Use `defaults delete` to delete any preference files related to the profile being created just encase `cfprefsd` is still caching values.
- Double-click the `.mobileconfig` file to install the profile on the system.

### Importing Into Munki

- `munkiimport [profilename.mobileconfig]`
- Add the `--update-for [application]` if you want to the profile to be invoke everytime the software is installed.
- Import an already existing MCX Preference defined in an available Directory Services computer object.

      ./mcxToProfile.py --dsobject
      /LDAPv3/od.my.org/ComputerGroups/StandardPreferences --identifier
      MyBasePreferences

    ./mcxToProfile.py --plist ~/Library/Preferences com.fetchsoftworks.Fetch.License.plist --identifier FetchLicense --manage Once

## Vocabulary

- Kext - stands for kernel extensions, which are essentially Mac OS drivers. They extend the kernel.!
- bom - bill of materials

## Resources

- macops.ca
- commandments of packaging in OS X <https://www.afp548.com/2010/06/03/the-commandments-of-packaging-in-os-x/>
- How to package Profiles <https://macops.ca/how-to-package-profiles>
- https://github.com/timsutton/mcxToProfile
