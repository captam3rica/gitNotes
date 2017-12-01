# VMware AirWatch EMM for macOS

Tue Nov 14 10:49:08 EST 2017

-   AirWatch 9.1
-   [AirWatch & Apple](https://air-watch.com/apple "air-watch.com/apple")

## Can ...

-   Enroll in DEP, VPP, and ASM (Apple School Manager)

    -   MDM through the Apple setup process

    -   [DEP Program](deploy.app.com)

    -   Generate a link between AirWatch and Apple

    -   MDM profile configuration - what will happen during the setup process (not a preference file)

    -   `Settings > Devices & Users > Apple > Apple Mac OS X > Device Enrollemnt Program`

    -   `Download Public key from AirWatch > upload public key to apple > Upload token file received from Apple`

    -   Now MDM profile creation can happen
        
        -   Auth through LDAP or LDAP
        -   Device staging for shared devices using a generic AirWatch user
        -   Device ownership type 
        -   Organizational group
        -   Profile name and info 
        -   Can lock the device to MDM
        -   Can configure device pairing
        -   Can scipt certain steps in the Apple Setup Assitant

    -   Assign devices to a DEP server 

    -   Force syncing 

    -   Multiple profiles can be added to a device

    -   Can upload SSNs using a csv or xml file

    -   Apple ID is required for pushing public apps to the device

    -   If stole, the device will still go throug the enrollment process 

-   Deploy, configure, and manage macOS devices 

-   Data security and compliance 

-   App and OS update delivery

-   **AppleCare +** Integration - Care for your Apple investments. View real-time device purchase and warranty information directly in AirWatch before you make the call to Apple support.

[Apple Business](https://www.apple.com/business/resources/#management "Apple for Business")


### Deploy, Configure, and Manage

-   Support for Corp owned.  BYOD, kiosks (single app mode???) and/or shared devices 

-   Dock, email, VPN, WiFi, app updates, wallpaper, web clips, launch behaviors, login window customization, energy saver settings, further customization through custom config files (.mobileconfig)

-   Configure local and admin accounts 


### App Delivery & OS Updates 

-   Same day support for OS updates utilizing Relay servers 
-   SSO support for apps
-   Even Win apps 


### Data Sec & Compliance 

-   Control FileVautl, GateKeeper, Firewall, the admin account, and firmware passwords.
-   Per app VPN configurations
-   App and Network segmentation to delimit access of data to the necessary users. 
-   Compliance rules can be set so that users can bring their devices into compliance. 
-   If necessary, access can be removed until the device is compliant. 
-   Conditional access controls and per-app VPNs can be set per user, per app, and per device. 

## Pricing

-   Subscription based

<table>
<tr>
    <td>Green</td>
    <td>$4.33/device/mo<t/td>
</tr>

<tr>
    <td>Orange</td>
    <td>$5.08/device/mo<t/td>
</tr>

<tr>
    <td>Blue</td>
    <td>$6.33/device/mo<t/td>
</tr>

<tr>
    <td>Yellow</td>
    <td>$9.33/device/mo<t/td>
</tr>
</table>

