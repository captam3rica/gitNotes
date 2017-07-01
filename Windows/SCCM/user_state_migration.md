# User State Migration Tool (USMT)

- Included in Windows ADK - Windows Assessment and Deployment Kit
- 3 command-line tools
  - ScanState
  - LoadState
  - UsmtUtils
- 3 Modifiable XML files
  - MigApp
  - MigDocs
  - MigUser

- I can create a config.xml file to specify files and settings that I do not want to include
- Custom XML files can also be created

## What does USMT capture

- user accounts
- user files
- operating system settings
- application settings

- ScanState and LoadState control the capture and re-deployment of user data
- Offline migration using ScanState from within the WinPE environment or from a previous Windows installation using a Windows.old file.

## Benefits

- Save time by limiting downtime, configuration after the migration has completed, preserving the user state, reduces time needed for user to become familiar with the new setup.

## Limitations

- migrations requiring end-user interaction
- customization on a machine by machine basis

## Scenarios

### PC-Refresh aka computer refresh

1. ScanState collects the user state and migrates data to a Migration store
2. OS is installed
3. LoadState restores the user data

#### Off-line PC-Refresh

1. Boot to WinPE and run the ScanState cmd tool
  - specify the /hardlink /nocompress cmd options
  ScanState saves the user state and migrates the data to a hard-link Migration store, improving performance by minimizing network traffic and minimizing failures on computers with smaller hard drives.
2. Install the standard operating environment (SOE)
3. Run the LoadState cmd tool to restore the user state back to the computer

#### PC-Refresh using compressed migration store

1. Admin runs ScanState cmd tool, which stores the user state on a server
2. OS installed
3. LoadState migrates the user state back

#### PC-Refresh using hard-link migration store

1. Admin runs ScanState and saves to a hard-link using the following: /hardlink /nocompress. ScanState saves the user state to a hard-link migration store on each computer.
2. OS installed
3. Admin runs LoadState to restore user state

#### PC-Refresh refresh using Windows.old and hard-link migration store

1. Admin installs clean OS installation, make sure that the windows.old dir is created by installing without re-formatting or re-partitioning and by selecting a partition that contains the previous version of Windows.  
2. Install OS
3. Admin runs ScanState and LoadState cmd tools and specify the /hardlink /nocompress cmd options

### PC-Replacement

Migrate user state from old PC to intermediate migration point. Install OS on destination PC and migrate user state to destination.

1. ScanState on source PC and save to data migration point
2. Install new OS on dest PC
3. LoadState on dest PC to migrate user state

#### Scenario 3: Managed network migration

1. On each source computer, the administrator runs the ScanState tool using Microsoft System Center Configuration Manager (SCCM), Microsoft Deployment Toolkit (MDT), a logon script, a batch file, or a non-Microsoft management technology. ScanState collects the user state from each source computer and then saves it to a server.
2. OS install
3. On each of the new computers, the administrator runs the LoadState tool using System Center Configuration Manager, a logon script, a batch file, or a non-Microsoft management technology. LoadState migrates each user state from the migration store to one of the new computers.

## References
- [Scenarios](https://technet.microsoft.com/en-us/library/hh825180.aspx)
