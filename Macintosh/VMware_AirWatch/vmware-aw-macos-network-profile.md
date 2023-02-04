# Network Access Profile

Automatically connect to a Wi-Fi network (hidden, password protected, or
encrypted)

Go to **`Devices > Profiles & Resources > Profiles > select Add > select Apple
macOS`**

1.  Determine if this profile will apply to only the enrollment user (User
    Profile) on the device, or the entire device (Device Profile).

2.  Configure **General** settings.

    General settings determine how the profile deploys and who will receives the
    profile. For General Profile settings click
    [here](https://github.com/captam3rica/gitNotes/tree/master/Macintosh/vmware-aw-general-settings.md)

3.  Select **Network** payload.

4.  Choose to configure **Wi-Fi** or **Ethernet** settings

-   **Network Interface**: choose Wi-Fi or Eth
-   **Service Set Identifier**: enter name of network
-   **Hidden Network**: allows connect to not open or broadcasting
-   **Auto-Join**
-   **Security Type**: choose connection encryption type
-   **Use as login window config**: connect at login window.

    Will appear if Wi-Fi and Enterprise security type are selected, or if
    Ethernet is selected.

-   **Protocols**: choose protocols for network access.
-   **Password**: password required to joing network.

5.  Configure **Auth** settings that vary by protocol:

-   **Use as login window config**: For **Device Profiles** only.

    Select this if any Enterprise protocols were selected for the network. Allow
    auth with the targe machine's dir creds.

-   **Username**

-   **User Per-Connection Password**: Request password during the connection and
    send with auth.

-   **Password**

-   **Identity Certificate**

-   **Inner identity**: inner identification method

-   **Outer identity**: Select the external auth method.

6.  Enter the name(s) of server certs.

7.  Select **Allow Trust Exceptions** to enable the end user to make trust
    decisions. 

8.  Select **Save & Publish** to push the profile to devices.
