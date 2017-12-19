# macOS Mobility Profile

Allow for the configuration of portable home dirs for network accounts. Users
will be able to login to the computer with their network creds even if the
computer is not currently connected to the network. Can optionally configure
home dir and user prefs to sync to a central location. 

Go to **`Devices > Profiles & Resources > Profiles > Add > Apple macOS`**

1.  Will the profile apply to the User profile or the Device Profile?

2.  Configure General settings. 

3.  Select the **Mobility** payload.

4.  Using the **Account Creation** tab, set up the mobile account profile. When
    the account is set up, a local copy of the user's network home folder is
    created for use when they are not connected to the network.

-   **Configure Mobile account** 

-   **Require confirmation**: send a confirm message to the end user.

-   **Show don't ask me again**: allow user to skip prompt

-   **Configure home using**: choose settngs to either **Network home and
    default sync settings** or **Local home template** form the drop-down
    navigation menu.

-   **Home folder location**: Choose either the **on startup volume folder**, at
    **path** and the enter the path location of the user's computer where the
    home folder will reside, or set the location that the **user chooses**

-   **Encrypt contents with FileVault**: If encryption is enabled configure the
    following settings:

    -   Require a **Master password** 
    -   Restrict the size of the network home quota by choosing **Restrict
        Size**. Determine a **Fixed size** with **megabytes** or a **Percentage
        of the home network quota** and the **Size** of the percentage.

-   **Delete mobile accounts**: how and when the accounts will the deleted.

    -   Select **Delete mobile accounts** to configure options
    -   Choose **After** and how many hours, days, or weeks to delete the
        account after it expires. Setting the value to **0** will cause
        immediate deletion of the account.
    -   Select **Delete only after successful sync** to delete after device
        syncs with central server.

5.  Choose **Rules** tab to config sync options

-   **Preference Sync**: can choose which items to include and exclude.

    -   Select **Merge with user settings** to add or append user's sync
        settings. 
        **Note**: If this is not selected, the local user settings will be wiped
        when the new settings are applied. 

-   **Home sync**: to sync desktop preferences, and choose which items to skip.

    -   Select **Merge with user settings** to add or append user's sync
        settings. 
        **Note**: If this is not selected, the local user settings will be wiped
        when the new settings are applied. 

6.  **Save & Pub** to push profile to devices.

