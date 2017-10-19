# jamf 100 Study session

[Start Here](http://docs.jamf.com/education-services/jamf-100-course/1.1/Lesson_1__Course_Introduction.html)

## macOS

### macOS Fundamentals

- **shft + cmd + A** - opens the *Applications* directory
- Under *System Information* > Storage > **Manage Storage**
- *System Preferences* is broken down into: **Personal | Hardware | Networking | System | Extra: Special 3rd party software ie Java ...**

#### File System Structure

 - Disk
   - Partition Scheme (GUID aka GPT)
     - Volumes & Partitions (JHFS+, HFS+, or APFS)
       - Recovery Partition (Hidden - install files, tools for re-installation, and tools for maintenance)
       - Macintosh HD (all user data)

 **File System**
- /
  - Applications
    - Utilities
  - Library - 3rd party system preferences  
  - System - Core services for the OS and built-in apps
    - Library
  - Users
    - [username]
      - Applications
      - Desktop
      - Documents
      - Downloads
      - Pictures
      - Public
      - Library*
    - Shared

### macOS JSS

- 10.7 or later to be compatible
- Along with the MDM profile, the jamf binary is installed on managed computers

**jamf Software**

- Recon - one way to add computers to the JSS
- Composer - creating packages to be deployed through the JSS
- jamf Admin - upload packages, scripts, printers, and Dock items here
- jamf Imaging - used to image and provisions clients
- jamf Remote - allows admins to push remote management commands to clients

**User Accounts & Groups**

Settings > System Settings > JSS User Accounts & Groups

**User-Initiated Enrollment**

Settings > Global Management > User-Initiated Enrollment > Platforms
Computers > Enrollment Invitations

- It is good practice to sign quick-add packages so that they are not quarrintined by Gatekeeper
- Users can either navigate to a custom URL or the URL can be sent to the user via email

**DEP Enrollment**

Computers > PreStage Enrollments

- If the MDM profile is removed, all configurations associated with that profile will be removed as well.
- DEP enrollment happens upon connecting to a network during macOS Setup Assistant
- Some options that can be configured in the MDM profile
  - Automated enrollment during the macOS Setup Assistant.
  - Require LDAP authentication.
  - Prevent the removal of the MDM profile.  
  - Suppress portions of the macOS Setup Assistant.
  - Enforce local user account password security requirements.
  - Bind computers to an LDAP.

**Inventory Searching**

Computers > Search Inventory
Settings > Computer Management > Inventory Display

**View & Edit Inventory Information**

Computers > Search Inventory

- No management status for *Apps* on macOS at this time

**Links**

[Viewing and Editing Inventory Information for a Computer](http://docs.jamf.com/casper-suite/administrator-guide/Viewing_and_Editing_Inventory_Information_for_a_Computer.html)

**Scope**

Computers > Configuration Profiles
Computers > Mac App Store Apps

- Targets | Limitations | Exclusions
- "No scope defined" - means that apps cannot be assigned until at least one *Scope* has been created.

**Groups**

Computers > Static Computer Groups

- For scopes and reporting
- Static and Smart groups

**Configuration Profiles**

Computers > Configuration Profiles
Computers > Configuration Profiles > Configuration Profile Name > Logs
Computers > Search Inventory > Computer Name > History > Management History

- Try to avoid overlapping or conflicting payloads in the configuration profiles

**App Deployments**

Computers > Mac App Store Apps

- Easier that iOS *App Deployments*
- Install Automatically/Prompt user versus available in self-service

**Remote Commands**

Computers > Search Inventory > Computer Name > Management > Management Commands
Computers > Search Inventory > Search > Action > Send Remote Commands

- View a list of computers, then at the bottom select *Actions*, then select **Remote Commands**
