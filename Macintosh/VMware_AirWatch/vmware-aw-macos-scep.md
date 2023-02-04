# Configure a SCEP/Creds Profile

Implementing digital certs to further the orgs security.

Define a CA. Then configure a Creds profile along with an Exchange Web Service,
Wi-Fi, or VPN profile. 

Go to **`Devices > Profiles & Resources > Profiles > Add > Add Profile > select
Apple macOS`**

1.  Is the profile being applied the User Profile or Device Profile?

2.  Configure **General** settings.

    General settings determine how the profile deploys and who will receives the
    profile. For General Profile settings click
    [here](https://github.com/captam3rica/gitNotes/tree/master/Macintosh/vmware-aw-general-settings.md)

3.  Select **Exchange Web Service, Wifi, or VPN** payload to configure.

4.  Select the Creds or SCEP payload and Upload a cert or select **Defined CA**
    from the Creds source drop-down and select the **CA** and **Cert Template**
    from their respective drop-downs.

5.  Navigate back to the previous payload for **Exchange Web Service, Wifi, or VPN**. 
    Specify the ID Cert in the payload

-   **Exchange Web Service**: Select payload cert under login info

-   **WiFi**: Select a compatible security type and select the ID Cert under
    Authentication.

-   **VPN**: Select a compatible connection type (CISCO anyConnect, F5 SSL) and
    select cert from the Mahcine/User Auth drop-down. Select the ID Cert.

6.  Return to the Creds payload and choose the following allowances:

-   **Allow access to all apps**: whether or not apps can access the cert in the
    keychain.

-   **Allow export from the Keychain**: whether or not users can export the
    private key from the installed cert.

7.  **Save & Publish**

