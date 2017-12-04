AirWatch General Profile Settings

## Overview

The settings are, for the most part, platform agnostic 

## Configure Settings

**`Navigate to Devices > Profiles & Resources > Profiles > ADD`** 

1.  Select one of the following options:

    -   Add profile: one-off addition of a new device profile
    -   Upload Profile: Upload a signed profile on your device 
    -   Batch Import: Import profiles via **csv**. Enter a name and description.

2.  Select **Add Profile**

3.  Select the platform (macOS, iOS. Win, Adriod, BlackBerry, etc) - settings
    will very depending on device type.

4.  Configure the following settings on the **General Tab**

-   Name: display name in AW console
-   Version
-   Description 
-   Deployment: 

    -   Managed: Profile is removed
    -   Manual: Profile stays until removed by the End User

-   Profile Scope

    -   Production
    -   Staging 
    -   Both

-   Assignment Type: How the profile will be assigned to the device

    -   **Auto**: deploy to all devices automatically

    -   **Optional**: user can choose to install. The admin can choose to push to a
        device. Payload can be displayed in the **App Catalog** as well.

    -   **Interactive (not on iOS or Android for Work)**: End Users install through
        the SSP. These profiles interact with external systems.

        Configure by going to `Groups & Settings > All Settings > Devices &
        Users > Advanced > Profile Options.

    -   **Compliance**: Implemented when the End User does not take necessary
        actions to make their device(s) compliant

        Compliance profiles serve as the security gate protecting corporate
        content. 

        You can create duplicate profiles with stricter settings that can be
        applied if the End Users fails to comply.

        See [Compliance Policies
        Overview](https://my.air-watch.com/help/9.1/en/Content/Core_Guides/MDM/C/CompliancePoliciesOverview.htm)

-   **Allow Removal** (iOS 7 & below only): 

    -   **Always**
    -   **With Authorization**: With auth from the amdmin and adds a
        **password** field to the account,
    -   **Never**

-   **Managed By**

-   **Assigned Groups**

    **`Groups & Settings > Groups > Assignment Groups`**

    The device group takes precidence of the smart group. (ie if the preference
    only applies to iOS devices, Android devices will not get the setting even
    if they are in the same smart group)

    _List View_ can be used to assign multiple org groups, smart groups, and
    user groups to one or more profiles, public apps, and policies.

-   **Exclusions**: choose groups to exclude

-   **View Device Assignments**

-   **Additional Assignment Criteria**: 

    -   **Install only on devices in selected areas**: enter an address anywhere
        in the world and a radius in kilometers or miles. 

        Geofence: **`Devices > Profiles & Resources > Profile Settings >
        Areas **> Select **Geofencing Area`**

    -   **Enable Scheduling and install only during selected time periods**

-   **Removal Date**: must be future date. Format: MM/DD/YYYY

5.  Configure **Payload**. 

6.  **Save & Publish**
