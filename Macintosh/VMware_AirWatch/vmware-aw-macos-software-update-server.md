# macOS Software Update Server

-   Use to set configurations for the macOS server that the client device will
    connect to for updates.

-   Schedule the frequency at which the device will check for updates.

-   Connect to a corporate server if needed.

-   Manage updates, restart options, and end user messaging.


Go to **`Devices > Profiles & Resources > Profiles > Add > Apple macOS > Device
Profile`**

1.  Configure **General** settings.

    General settings determine how the profile deploys and who will receives the
    profile. For General Profile settings click
    [here](https://github.com/captam3rica/gitNotes/tree/master/Macintosh/vmware-aw-general-settings.md)

2.  Select **Software Update** payload.

3. Configure settings 

-   **Update Source**: if choosing Corporate SUS, enter the hostname ie:
    http://server.net:8088/index.sucatalog

-   **Install macOS Updates**: 

    -   **Install updates automatically**: will send a notification to the user
    -   **Download updates in background**: send notification that updates are
        ready to install.
    -   **Check for updates only**
    -   **Don't auto check for updates**

-   **Choose Updates**: 

    -   **Choose All**
    -   **Recommended only**

-   **Allow installation of macOS beta**: allows beta releases on the server.
    Does not require AW Agent.

-   **Install App Updates**: allow app updates

-   **Notify user that updates are installing**

-   **Schedule**

    -   **Configure Update Interval**: choose how often to check in 2 hour
        increments.
    -   **Update a Specific Time**: choose specific days and times to check for
        updates. 

-   **Force Restart (if req)**:

    -   **Grace Period**: admin chooses
    -   **Allow user to defer**: users chooses

        -   **Defer Time**: how often the prompt shows
        -   **Max number of defers**

4.  Determine options if updates are installed automatically

    -   **Force Restart (if req)**
    -   **Grace Period**
    -   **Allow user to defer**

        -   **Derfer time**
        -   **Max number of defers**

6.  **Save & Publish** to push profile to devices.

