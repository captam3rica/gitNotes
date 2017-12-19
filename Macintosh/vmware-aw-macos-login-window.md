# macOS Login Window Profile

Go to **`Devices > Profiles & Resources > Profiles > Add > Apple macOS > Device
Profile`**

1.  Configure **General** settings.

    General settings determine how the profile deploys and who will receives the
    profile. For General Profile settings click
    [here](https://github.com/captam3rica/gitNotes/tree/master/Macintosh/vmware-aw-general-settings.md)

2.  Select **Login Window** payload.

3.  Configure settings 

-   **Window**: 

    -   Show addtional info in the menu bar: OS version, hostname, & IP address
        when the menu bar is selected.
    -   Custom banner
    -   Show local user, mobile accounts, network accounts, device admins, and
        other info.
    -   Show shutdown, restart, and sleep.

-   **Options**

    -   Display passwd hint and set number of attempts until hint is shown (if
        available)
    -   Enable auto login, console access, fast user switching
    -   Log out users, enable admin to refresh or disable management
    -   Set computer name to computer record name, enable external accounts,
        allow guest users. 
    -   Set screen saver and set the actual screens saver

-   **Access**

    -   Allow or deny user access to device.
    -   Allow local-only users to login. Use available workgroup settings and
        nesting.
    -   Combine available work group settings and always show work group dialog
        during login.

        **Note**: for this to work, device must be bound to the same directory
        that AW is pulling users from.

-   **Scripts**

    -   Set EnableMCXLoginScripts to **TRUE**
    -   Set MCXScriptTrust to match the binding settings used to connect the
        client computer to the directory domain. 

4.  **Save & Publish** to push profile to devices

