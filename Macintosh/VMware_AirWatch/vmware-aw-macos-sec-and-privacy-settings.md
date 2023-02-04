# macOS Security & Privacy Settings

- Configure Gatekeeper functionality for app downloads and some password
    settings.

Go to **`Devices > Profiles & Resources > Profiles > Add > Apple macOS`**

1.  Will the payload apply to the User Profile or Device Profile.

2.  Configure **General** settings.

    General settings determine how the profile deploys and who will receives the
    profile. For General Profile settings click
    [here](https://github.com/captam3rica/gitNotes/tree/master/Macintosh/vmware-aw-general-settings.md)

3.  Select **Security & Privacy** payload.

4.  Choose where apps can be downloaded from

5. Configure settings 

-   **Gatekeeper**: Specify which apps can be downloaded or select **Do not
    allow user to override Gatekeep settings** to prevent user from modifying
    settings.

-   **Security**: 

    -   Set sec options to allow users to change passwd (macOS 10.9+)
    -   Require password after sleep or screen saver begins
    -   Allow user to set lock message (macOS 10.9+)
    -   Select **Grace Period** to determine when the password is required if
        **Require password after sleep or scrennsaver begins** is selected.

-   **Privacy**: set if you want to auto send usage & and diag to Apple.

6.  **Save & Publish** to push profile to devices.

