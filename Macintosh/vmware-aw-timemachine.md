# macOS TimeMachine Profile

Go to **`Devices > Profiles && Resources > Profiles > Add > Apple macOS >
Device Profile`**

1.  Configure General settings 

2.  Select **TimeMachine** payload

3.  Configure settings

-   **Backup all volumes**: only startup is backed up by default

-   **Backup system files and folders**

-   **Enable automatic backup**: auto backup at determined intervals

-   **Enable local snapshots**: when device not connected to network.

-   **Backup size limit**: Set max size allowed to backup the system, enter 0
    (zero) for unlimited.

-   **Paths to backup** 

-   **Paths to skip**

4.  **Save & Pub** to push profile to devices.

**Note**: Once the profile is pushed to the device, the user's network creds
will be used to configure the network share connection in the Keychain. The
backup will not mount using local creds. The backup will be associated with the
original user's backup volume.

