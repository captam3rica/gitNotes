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

    -   Auto: deploy to all devices automatically

    -   Optional: user can choose to install. The admin can choose to push to a
        device. Payload can be displayed in the **App Catalog** as well.

    -   Interactive (not on iOS or Android for Work): End Users install through
        the SSP. These profiles interact with external systems.

        Configure by going to `Groups & Settings > All Settings > Devices &
        Users > Advanced > Profile Options.

    -   Compliance: Implemented when the End User does not take necessary
        actions to make their device(s) compliant

        Compliance profiles serve as the security gate protecting corporate
        content. 

        You can create duplicate profiles with stricter settings that can be
        applied if the End Users fails to comply.

        See [Compliance Policies
        Overview](https://my.air-watch.com/help/9.1/en/Content/Core_Guides/MDM/C/CompliancePoliciesOverview.htm)


