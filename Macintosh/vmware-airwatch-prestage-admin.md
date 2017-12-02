### Pre-Staged Admin Accounts for macOS in AirWatch

Apple's macOS 10.11 (El Capitan) brought the capability to stage a local, administrative 
user account through DEP enrollment (with the option to hide the admin account). 
In AirWatch 9.0, this feature is supported as part of a staging workflow, via the 
DEP profile configuration. This allows users to have a non-administrator, user account, 
while the AirWatch administrator gains a hidden administrator account that can be 
used for troubleshooting.

**To set up a typical workflow, perform the following:**

-   Click `**Devices > Profiles & Resources > Profiles > Add > Add Profile > macOS > 
    Device Profile**`

-   Configure a profile with a Directory payload and assign it to assignment groups
    that will contain your DEP-enrolled devices.

-   This payload binds the macOS device to your directory. Information about this 
    payload can be found in the macOS Platform Guide in MyAirWatch.

-   Click `**Devices > Device Settings > Apple > Device Enrollment Program**`

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

