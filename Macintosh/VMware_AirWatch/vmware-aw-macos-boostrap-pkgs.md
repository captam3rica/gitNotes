# Custom Bootstrap Pkg for Device Enrollment

Use the Apple MDM command `InstallApplication` to allow an MDM to natively
install `.pkg` files to an enrolled device immediately after enrollemnt 
whether or not the AirWatch Agent is installed. In the past, the AW 
Agent handle app installations. 

If you want to use alternative tools to manage devices and apps in addition to
AW Agent. 

Bootstrap pkg enrollment consists of an enrollment workflow paired
with a bootstrap pkg that installs the alt tools and configures the device
before the end user begins using the device. 

## Use Cases (not extensive)

-   Using Munki or other manager to manage apps
-   Using Chef or Puppet for config management, and only using the MDM for cert
    and software management.

## Bootstrap Pkg Creation

Bootstrap pkgs deployed from the AW Console will not deploy to previously
enrolled devices unless the devices are specifically targeted using the **Assigned
Devices** list.

Many different tools can be used to create pkgs. Pkgs must meet the following
criteria:

-   Must be signed with an appropriate cert (such as TLS/SSL signing cert). Only
    the pkg needs to be signed. **Apple Gatekeeper** does not check the app for
    a cert if they are installed through a MDM.

-   The pkg must be a distribution pkg, i.e. you must deploy the pkg to your
    device(s). 

## Bootstrap Pkg Deployment 

Go to **`Apps & Books > Internal > Add Application`**

1.  Upload a `.pkg` The meets the above mentioned requirements.

2.  Select **Continue** and modify items in the **Details** tab and the
    **Images** tab if necessary. 

3.  Select **Save & Assign**

4.  Select **Add Assignment** to configure **App Delivery Method**

-   By default, the _App Delivery Method_ is set to **Auto**. In this config,
    the assigned bootstrap pkg will only install on new-enrolled devices.

-   To Install the pkg on enrolled devices, select **On Demand**. Requires the
    pkg be manually pushed.

-   To manually deploy to enrolled devices, got to **`Applications > Internal
    Apps > List View`**. Select a package to open its **Application Details**.
    Use the **Devices** tab to select devices to push the pkg to. 

