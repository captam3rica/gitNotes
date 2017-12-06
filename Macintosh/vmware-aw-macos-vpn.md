# Configure macOS VPN Profile

**Note**: VMware Tunnel support only available for Safari App on macOS devices.

Go to **`Devices > Profiles & Resources > Profiles > select Add > select Apple
macOS`**

1.  Will the profile apply to the User Profile or Device Profile.


2.  Configure **General** settings.

    General settings determine how the profile deploys and who will receives the
    profile. For General Profile settings click
    [here](https://github.com/captam3rica/gitNotes/tree/master/Macintosh/vmware-aw-general-settings.md)

3.  Select **VPN** payload.

4. Configure **Connection** settings:

-   **Connection Name**

-   **Connection Type**: Use drop down menu

-   **Server**: enter hostname or IP address of VPN server

-   **Account**: name of VPN account

-   **Send All Traffic**: check box to force all traffic over VPN network

-   **Per App VPN**: For macOS 10.9 devices, use _Per-App VPN_ to choose which
    apps should connect to what networks.

    > Every time a specified app is opened, the VMware Tunnel app checks the list
    > of rules to determine which rule applies to the situation. If no set rules
    > match the situation, the VMware Tunnel app applies the default action. The
    > default action, set for all applications except for safari, applies to
    > domains not mentioned in a rule. If no rules are specified, the default
    > action applies to all domains. 

-   **Connect Automatically**: allow VPN to connect automatically to chosen
    Safari Domains.

-   **Enable Safari Domains**: Enable to set specific domains or hosts that open
    the secure VPN connection in Safari. **Add** doms as needed.

    If a _Per App_ tunnel rule is configure for Safari, AW disables this
    settings. Network traffic rules override any configured Safari domain rules. 

-   **App Mapping**: Enable to specify which apps will use the VPN setting.
    **Add** app bundle ID(s) for apps allowed to open a secure VPN connection.

5.  Config **Auth**

-   **User Auth**: indicate how user will auth to VPN
-   **Shared Secret**: Enter shared secret key

6.  Select **Manual** or **Automatic** proxy and the appropriate settings.

## On Demand VPN Profile

Auto establish VPN connection when connecting to specific doms. Certs are used
for auth instead of passcodes.

### Distributing Certs in  AW Console during Config & Set UP of VPN on Demand

1.  Ensure CA and cert templates in AW are properly configured for cert
    distribution.

2.  Make 3rd party VPN of choose available to end users by pushing to devices or
    through the App Catalog.

3.  Go to **`Devices >? Profile & Resources > Profiles > select Add > select
    Apple macOS`**

    Choose if profile is going to apple to User Profiles or Device Profiles.

4.  Configure **General** settings.

    General settings determine how the profile deploys and who will receives the
    profile. For General Profile settings click
    [here](https://github.com/captam3rica/gitNotes/tree/master/Macintosh/vmware-aw-general-settings.md)

5.  Select **VPN** payload & config settings as mentioned above.

6.  Specify the **Connection Info** for a connection type that supports cert
   auth: **IPSec (Cisco), F5 SSL, or custom SSL**

-    **Server**: Enter hostname or IP address for server
-    **Account**: Enter VPN account name.

7.  **Authentication**: Select a cert to auth the device 

8.  **Identity Certificate**: Select the appropriate credintials.

9.  Check the **Enable VPN On Demand** box. **Add** the **Domains**, and choose
    the **On-Demand Actions**.

-   **Always Establish(Est)**: initiate VPN connection regardless if the page can be
    accessed. 

-   **Never Est**: Does not create a VPN connection for addresses matching a
    specified domain. However, if the VPN connection is already active, a
    connection might be made. 

-   **Est if Needed**: Initiates VPN connection only if the specified page
    cannot be reached directly.

    **Note**: the period(.) is the wildcard character.

10. **Save & Publish** to push to devices. VPN prompt will popup automatically
    when the user navigates to a site that requires it. 

