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

        -   **Mutli-User**: 


## DEP Security Features 

What happens when device enrolled in DEP are lost or stolen. 

**Max App Passcode Attempts**

**`Groups & Settings > All Settings > Apps > Security Policiesi`** 

-   Can require passcode for to enter SDK apps on the device

-   Can set a max number of passcode attempts before the device goes into **Lost
    Mode**. Can only be unlocked from the AirWatch Console.

**Agent Unenroll Protection**

-   If someone tries to unenroll a supervised DEP device through the AW agent,
    the device will go into **Lost Mode**.

-   Can only be unlocked through the AW console.
