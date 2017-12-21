# macOS Directory Profile

[source](https://my.air-watch.com/help/9.1/en/Content/Platform_Guides/macOS/T/MacProfileDirectory.htm?TocPath=PROFILES|macOS Device%20Profiles|_____15)

-   Binding a device to a directory service will force that device to comply with
    directory policies and password security settings. 

-   A device can be bound to multiple directory services by pushing multiple
    profiles to it. 

Go to **`Divices > Profiles & Resources > Profiles > Add > Apple macOS > Device
Profile`**

1.  Configure General settings 

2.  Select the **Directory** payload. Then, choose a **directory type**, Open
    Directory or AD.

    **Note**: If multiple policies enforce different rules, the one that is most
    restrictive will take precedence.

3.  Configure **Auth** settings

-   **Directory Type**: AD or Open Directory or LDAP

-   **Server Hostname**

-   **Username and Passwd**: The admin account should not include the domain in
    the user login. (ie not "domain\admin")

-   **Client ID**: SN, Asset tag, or some other unique id.

4.  Configure **User Experience** settings for AD accounts.

-   **Configure a mobile account at login**
-   **Require confirm**: send comfirm msg to end user
-   **Use UNC Path**: Select to determine the UNC specified in the AD when
    mounting the network home. 
-   **Mount**
-   **Default User shell**

5.  Select **Mappings** tab to specify an attribute to be used for equvalent
    acronym (GID). By default derived from the dom server. 

6.  Configure **Administrative** settings 

-   **Group Names**: specify groups to determine admin privileges on the device 

-   **Preferred dom server**

-   **Namespace**: select primary account naming convention based on the
    **forest** or **domain**

-   **Packet signing**: choose how to ensure data security.

-   **Packet Encryption**

-   **Password trust interval**: how often the computer trust is updated.

-   **Restricts DDNS**: Add interfaces to specify updates. (en0, en1, etc)

7.  **Save & Pub** to push profile to devices.

-   **DDNS**:

    Method to auto update a name server in the DNS with its hostnames,
    addresses, or other info. Updates to DNS records without manual intervention (RFC 2136)

