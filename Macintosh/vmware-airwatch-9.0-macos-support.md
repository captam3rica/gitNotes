# New to macOS & iOS with AirWatch 9.0

## iOS

-   QoS Marking - designate specific apps to have priority when connected to 
    your Wifi networks (Apple and Cisco partnership)

-   Default communication rules - designate a default calling app so that users 
    can make a web called directly from the dialer without having to launch the 
    3rd app. Helps cut down on mobile roaming and data usage.

-   Bluetooth Modification Restriction - no modify by user

-   Workspace ONE is compatible with iOS 10+

-   APNS - renew process revamping 

    -   Verification process

-   Force iOS Updates 

    -   New devices are auto updated 
    -   Define compliance policies for OS updates
    -   Can define a range

## macOS

-   Sierra supported day 0

-   iClound and Music Service restrictions from a profile configuration 

-   DEP for macOS

    -   Await configuration - hold the user in Setup Assistant until the device is completely set
        up
        .
    -   Admin account creation - hidden admin account 
    -   Users will not be prompted to create a local account through the Setup Assistant
    -   Separate user account creation utilizing network credentials (AD, LDAP, etc)

**Network accounts are required**

-   How does this handle auth over wifi? 

    -   First use? 
    -   After being away from the network for some amount of time? 
    -   How is KeyChain syncing handled?

### Pre-Staged Admin Accounts for macOS in AirWatch

Apple's macOS 10.11 (El Capitan) brought the capability to stage a local, administrative 
user account through DEP enrollment (with the option to hide the admin account). 
In AirWatch 9.0, this feature is supported as part of a staging workflow, via the 
DEP profile configuration. This allows users to have a non-administrator, user account, 
while the AirWatch administrator gains a hidden administrator account that can be 
used for troubleshooting.

**To set up a typical workflow, perform the following:**

-   Click **`Devices > Profiles & Resources > Profiles > Add > Add Profile > macOS > 
    Device Profile`**

-   Configure a profile with a Directory payload and assign it to assignment groups
    that will contain your DEP-enrolled devices.

-   This payload binds the macOS device to your directory. Information about this 
    payload can be found in the macOS Platform Guide in MyAirWatch.

-   Click **`Devices > Device Settings > Apple > Device Enrollment Program`**

-   Click **Add Profile**

-   In the DEP profile settings, set the following:

    -   Authentication: Off
    -   Staging Mode [None, Single User or Multi-User]
    -   Default Staging User
    -   Await Configuration: Enabled
    -   Account Setup: Skip
    -   Admin Account Creation details (including whether to hide the account)

-   Save the DEP profile.

-   Assign the profile using batch upload or manual assignment in the Enrollment 
    Life cycle page (per the **VMware AirWatch Guide for Apple DEP** on **MyAirWatch**).
    When the device completes enrollment, the device will be bound and allow 
    log-in by Network user accounts (while the administrator account will be 
    pre-staged and hidden).

