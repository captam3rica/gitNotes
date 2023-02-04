# macOS Firmware Password Configuration

Prevent booting from an external drive, into recovery mode, or other partition.

AW Agent v2.2 or better is required

**Note**: if a firmware password is already set before the profile is pushed,
the installation will fail.

Go to **`Devices > Profiles & Devices > Profiles > Add > Apple macOS > Device
Profile`**

1. Configure [General Settings](https://github.com/captam3rica/gitNotes/blob/master/Macintosh/vmware-aw-general-settings.md)

2. Edit configurations

-   **Firmware password**
-   **Mode**

    -   **Command Mode**: require the firmware password when booting to another
        device or partition. After password is entered, the computers goes into
        command mode. Mac Agent prompts user to restart.

    -   **Full Mode**: Firmware password is required for every boot. The
        computer will prompt for a restart after the password is entered. 

**Note**: Once this profile is configured and pushed, it cannot be removed from
the device remotely.

3.  **Save & Publish** to push profile to devices

