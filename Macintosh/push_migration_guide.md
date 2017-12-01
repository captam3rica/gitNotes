# Push Migration User Guide

### System Requirements and Required Tools

- The host computer must be running OS X 10.10 or later with the Push Migration (Version 1.1) tool installed. For best performance, the host computer should have USB 3 and Thunderbolt.
- The source computer must support target disk mode and be running OS X Leopard 10.5 or later.
- The destination computer must be running the same major OS X version as the host computer.
- Compatible cables are needed to connect the source and destination computers to the host using target disk mode.

### Important

- **For host computers running OS X Yosemite (10.10)**, the host computer must have at least as many user accounts as the source computer. When setting up the host computer, it is recommended to configure 10 user accounts. The user accounts do not need to have any user data in them; they only need to be configured. If there are not enough user accounts configured on the host computer, then the customer’s data will not transfer.
- **For host computers running OS X El Capitan (10.11) or later**, the creation of additional user accounts is no longer needed.
- **All users are migrated in overwrite mode**. User accounts from the source computer will replace user accounts with the same name on the destination computer. Any users that are overwritten will have their home folders moved to /Users/Deleted Users.

### Steps

1. Connect the source computer to the host computer.
2. Connect the destination computer to the host computer.
3. Put both the source computer and the destination computer into target disk mode. To do this, hold down the T key at startup. The target disk mode symbol will appear on the screen of each computer.
4. Launch Push Migration on the host computer.
5. On first launch, the application may need to install a helper tool.

    **Note:** Installing the helper tool requires an administrator password.

6. Select a source and destination by dragging volumes to the window. Click Start to begin the migration.

    **Note:** The source (left) will display the computer name. The destination (right) will display the volume name. A new computer that has not been set up will not have a computer name set, and if dragged to the source, will display the volume name (Macintosh HD for a new Mac). This is a good way to verify that the correct volumes are being used for source and destination.

    **Note:** All user accounts and applications will migrate. There are no controls for this in the current release.

7. Push Migration will display the estimated time remaining.

    **Note:** The estimated time remaining may vary during long migrations. This is expected behavior.

8. Migration complete

**Troubleshooting**

1. If Push Migration incorrectly reports that another migration is in progress, it may not be communicating properly with the System Migration engine. Choose Push Migration > Reset Migration Engine from the menu to reset communication with the engine.
1. If a migration fails or completes with warnings, choose Window > Migration Log from the main menu to view additional details about the transfer.
