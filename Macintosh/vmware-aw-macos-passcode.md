# Passcode Configuration in AirWatch

## Overview

-   Customizable to the needs of the org.

-   If the password policy is controlled by a directory service, it is not
    recommended that one be configured in AirWatch.

-   If multple policies are applied to a single device, the one with the most
    restrictions is applied.

### Creating a Passcode Profile

**`Devices > Profiles & Resources > Profiles** > click **Add** > select **Apple
macOS`**

1.  Specify whether this profile will apply to the **User Profile**, or the
    **Device Profile**

2.  Configure **General Settings**

3.  Select the **Passcode** payload

4.  Configure settings for the _passcode_

    -   Require passcode on device
    -   Allow simple value: allows numerics only passwords
    -   Require Alphanumeric Value: disallow _spaces_ and _non-alphanumerics_
    -   Minimum Passcode Length
    -   Maximum Passcode Age (days)
    -   Auto-lock (minutes)
    -   Passcode history
    -   Maximum number of failed attempts
    -   Delay after failed login attempts

5. **Save & Publish**

