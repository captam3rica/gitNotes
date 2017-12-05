# DEP in VMware AirWatch

## DEP Enrollemnt Profile

After enrolling devices with Apple, use the DEP profile wizard in AirWatch to
create a DEP enrollment profile. 

### Creating a DEP enrollment profile

**`Groups & Settings > All Settings > Devices & Users > Apple > Device Enrollment
Program`**

1.  Select **Upload** and select Apple Server Token File (.p7m).
2.  Select **Next**. 

    Now AirWatch and Apple can auth each other. 

    Use only one token at the customer org group. Only add multiple tokens if
    your org has a complex config, or if enrolling devices with multiple DEP
    account.

    Child orgs can also have DEP profiles or tokens. Admins can override perms
    in a child org group and add multiple tokens to any group inheriting the DEP
    config.

3.  Config the **Auth** settings, depending on auth being turned **On** or
    **Off**.

    Auth settings are available for iOS 7.1 and higher. If devices running iOS
    7.0 or lower are assigned an auth profile, the devices are automatically
    enrolled using staging auth.

    -   If you turn on **Auth**, each user must tie a DEP device to their own
        user account.
    -   If you turn off **Auth**, you can enable staging of all devices under a
        single user account, and extra config options appear on the _Settings_
        page to accommodate this option. 

    **If you set Auth to On, then configure:**

    -   **Device Ownership Type**: Corp dedicated, Corp shared, or Employee-Owned.

    -   **Device Organization Group**: Select the org group that end users with auth
        to. Depending on your setup, end users can auth via AD or AirWatch creds. 

    -   **Custom Prompt**: Enable custom text to appear on the screen during the
        Setup Assistant. 

        Turn this off if you are using Apple School Manager for iPads.

    -   **Message Template**: Choose a message template to send as a custom prompt
        (only in English). Not available if **Custom Prompt** is off.

    **If you turn Auth Off, then config:**

    -   **Staging Mode**: Choose _None, Multi-User, or Single User_ after
        determining whether or not this device is staged (Single or Mutli-User)
        or not staged: 

        For Apple School Manager, choose to configure either single user or
        multi-user devices with education functionality.

        -   **None**: Does not stage device for other users. For non-registerd
        devices, all devices are enrolled under the _Default Enrollment User_.
        In this case, only non-staging users are available as _Default
        Enrollment User Options_.

        -   **Single-User**: Stages devices for a single, known user. Only
        staging users are available as _Default Enrollment User_ options. Once
        the end users open the AW Agent, they must enter their creds to enroll
        the staged device. Then the device details update in the AW Console and
        the device is associated with that end user.

        -   **Mutli-User**: Places device into _Shared Device Mode_. Shared
        Device Mode stages the device for multiple, unknown users. Only staging
        users are available as Default Enrollment User options. When the end
        users open the AW Agent, they must enter their creds to check out the
        device for use. 

    -   **Default Staging User**: Determines enrollment user assigned to device.

    -   **Device Ownership Type**: Corp dedicated, Corp shared, or Employee-Owned.

    -   **Device Organization Group**: Select the org group that end users with auth
        to. Depending on your setup, end users can auth via AD or AirWatch creds. 

4.  Configure **MDM features** of the device.

    -   **Profile Name**
    -   **Department**
    -   **Support Number**
    -   **Require MDM Enrollment**: This can be used to ensure end user devices
        cannot be enrolled unless enrolled in AW MDM.
    -   **Supervision**: Enable to configure _Supervised Mode_, which is an
        alternative to configuring _Supervised_ devices using _Apple
        Configurator_.

        Supervision is requrire for shared devices.

    -   **Shared Devices**: Enable for shared devices with edu functionality.
        Required for **Apple School Manager**

    -   **Lock MDM Profile**: Prevent end user unenrollment.

        Only in _Supervisor Mode_

    -   **Device pairing**: Enable syncing with iTunes, Configurator, and iPCU. 

        Set to **Disable** when deploying edu functionality, and **Upload** a
        **Device Pairing Cert** for supervised identities. 

    -   **Await Configuration**: 

        If enable, more options will appear in the **Setup Assistant** section.

        To override this setting, go to **`Device > Details View`** and select
        the device to override. Select **`More Actions > Device Configured`** to
        note the device as configured and skip the awaiting configuration screen
        during enrollment.

5.  Choose items to be seen by end users during the Apple **Setup Assistant**
    workflow. For Apple School Manager, skip Setup Assistant options

    -   **Passcode**: **Don't Skip** to allow users to set a passcode. If an MDM
        profile for passcodes is being used skip this step.
    -   **Touch ID**
    -   **Location Services**

    -   **Restoring From Backup**: **Don't Skip** if users are allowed to
        transfer data from another device.

    -   **Move from Android**: If **Don't Skip** is selected in the previous
        setting, Select **Don't Skip** here to prompt users to move accounts and
        data.

    -   **Sing in with Apple ID and iCloud**
    -   **Siri**
    -   **Diagnostics**
    -   **Registration**
    -   **Apple pay**: If not skipped, Apple Pay is disabled for enrolled
        accounts.
    -   **Zoom**
    -   **FileVault 2**
    -   **Account Setup**: Only if **Auth** set to **Off**.
        
        Configure the admin account for this selection in the **Admin Account
        Creation** area.

    -   **Account Type**: Only if **Auth** set to **Off** and **Account Setup**
        set to **Don't Skip**

        If **Standard** is selected, an **admin** account must also be created
        to manage the device.

6.  For certain settings in **Setup Assistant**, use the **Admin Account
    Creation** section to create an admin for local and remote macOS device
    admin actions.

    -   **Username**
    -   **Full Name**
    -   **Password**
    -   **Hidden**

        **Enable** to hide. This can enhance sec and user exp.

7.  Select **Save** to view a **Summary** page and review settings. Assign to
    devices registered in DEP.

    -   **Sync Now & Assign to All Devices**: Selecting **No** does save the
        settings but does not deploy them.

    -   **Auto Assign Default Profile**: **Yes** to push DEP profile to all
        current registerd devices as soon as the checking with AW and any
        devices as they become enrolled in the future.

        **No** to stop newly registered devices from getting teh DEP profile. Do
        this if you entended to have multple DEP profiles.

8.  Once deployment options are configured, select **Save**. 

