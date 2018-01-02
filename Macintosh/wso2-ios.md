# WSO2 iOS WSO2 Server
Last update: Tue Jan  2 10:14:42 EST 2018

-   Online [Documentation](https://wso2.com/wso2-documentation)

-   WSO2 on [github](https://github.com/wso2/product-iots)

-   [wso2 ios part 1](https://wso2.com/library/articles/2014/03/managing-ios-devices-with-wso2-enterprise-mobility-manager-part-1-0/)

-   [wso2 ios part 2](https://wso2.com/library/articles/2014/03/managing-ios-devices-with-wso2-emm-part-2/#top) 

## Quick Start - WSO2 Cloud

[click here](https://docs.wso2.com/display/IoTS310/iOS+Device)

Although, the cloud management server for devices and apps does not seem to be
an option any longer as of Thu Dec 21 16:50:10 EST 2017

## Server Prerequisites

-   Need the following if you are build the WSO2 iOS Agent for development (optional)

    -   Must be part of Apple Developer Program ($99)
    -   Must have Xcode & OpenSSL

-   Why

    -   Report location details to the server.
    -   Perform the ring operation.
    -   Perform notification operations by sending messages to the device.

## Server Setup

Online docs for server setup, click 
[here](https://docs.wso2.com/display/IoTS310/iOS+Server+Configurations)

---

**iOS feature Installation**

-   Online documentation, click
[here](https://docs.wso2.com/display/IoTS310/Installing+iOS+Features)

-   Get CSR file and P2 repo from WSO2 [here](https://wso2.com/products/iot-server/ios/)

    -   Source code can be modified if desired

-   Get an Apple Push Notifications cert from the 
[APNS Portal](https://idmsa.apple.com/IDMSWebAuth/login?appIdKey=3fbfc9ad8dfedeb78be1d37f6458e72adc3160d1ad5b323a9e5c5eb2f8e7e3e2&rv=2) 

_Steps_

1.  Extract the **ios-features-deployer** from the received email, and copy the
    contents to the iot server home directory.

2.  From a terminal, got to the ios-features-deployer use the following commands
    to install the ios-features.

    `cd ios-features-deployer`    
    `mvn clean install -f ios-features-deploy.xml`

    To verify that the features have been installed and configured, check the
    iOS properties in the following file to see if they are `true`.

    `less
    /[iots-server-home]/wso2/components/default/configuration/org.eclipse/
    equinox.simpleconfigurator/bundles.info`

    `...ios.api.utils, ...true`   
    `...ios.apns, ..., true`   
    `...ios.core, ..., true`   
    `...ios.payload, ..., true`   
    `...ios.plugin, ..., true`

3.  Uncomment `APNSBasedPushNotificationProvider` under the
    `PushNotificationProviders` configuration in the
    `[iots-server-home]/conf/cdm-config.xml` file.

    ```   
    <PushNotificationProviders>             
        <Provider>org.wso2.carbon.device.mgt.extensions.push.notification.provider.mqtt.MQTTBasedPushNotificationProvider</Provider>
        <Provider>org.wso2.carbon.device.mgt.extensions.push.notification.provider.xmpp.XMPPBasedPushNotificationProvider</Provider>
        <Provider>org.wso2.carbon.device.mgt.extensions.push.notification.provider.gcm.GCMBasedPushNotificationProvider</Provider>
        <Provider>org.wso2.carbon.device.mgt.mobile.impl.ios.apns.APNSBasedPushNotificationProvider</Provider>
    </PushNotificationProviders>
    ```

**Download the Server Files**

Place the files in a location or your choosing. This contains the binaries
necessary to configure and run the WSO2 IoT server.

**Starting the Services** 

-   `cd /bin`

    -   `./broker.sh`
    -   `./iot-server.sh`
    -   `./analytics.sh`

**Stopping the Server**

-   `ctrl-C` in the CLI window

**URLs to access the IoT server components once configured (via HTTPS)**

-   **Device Management Console**: `https://[ip-address/hostname]:9443/devicemgt` 

    [click here](https://docs.wso2.com/display/IoTS310/Accessing+the+WSO2+IoT+Server+Consoles#AccessingtheWSO2IoTServerConsoles-AccessingtheDeviceManagementConsole)

-   **Server Mgmt Console**: `https://<[ip-address/hostname]:9443/carbon`

    [click
    here](https://docs.wso2.com/display/IoTS310/Accessing+the+WSO2+IoT+Server+Consoles#AccessingtheWSO2IoTServerConsoles-AccessingtheWSO2IoTServerManagementConsole)

-   **Device Monitoring Dashboard**: `https://[ip-address/hostname]:9443/portal`

    [click
    her](https://docs.wso2.com/display/IoTS310/Accessing+the+WSO2+IoT+Server+Consoles#AccessingtheWSO2IoTServerConsoles-AccessingtheDataAnalyticsServerConsole)

### iOS Application support 

**HTTPS is required for Apple MDM interaction**

-   `vim [iots-home]/conf/app-manager.xml` and add **%httsp%**

        <Config name="AppDownloadURLHost">%https%</Config>    

### DEP enrollment

**Create the APNS Cert**

[click here](https://idmsa.apple.com/IDMSWebAuth/login?appIdKey=3fbfc9ad8dfedeb78be1d37f6458e72adc3160d1ad5b323a9e5c5eb2f8e7e3e2&rv=2)

**Developer APNS Cert**

[click
here](https://idmsa.apple.com/IDMSWebAuth/login?appIdKey=891bd3417a7776362562d2197f89480a8547b108fd934911bcbea0110d07f757&path=%2Faccount%2F&rv=1)

### iOS client config

-   Build the iOS client for custom client configuration

### iOS platform config

1.  Sign in the server.

2.  Select **Platform Configuration**

3.  Configure the following

-   **Simple Cert Enrollment Protocol (SCEP)**

    -   **Email**
    -   **Country**
    -   **State**
    -   **Locality**
    -   **Organization**
    -   **Organizational Unit**: ie State, Department, branch etc

-   **iOS Profile Confgi**: info pertaining the the org

    -   **Org Display Name**

-   **iOS IoTS & APNS config**

    -   **MDM Cert**: APNS cert that was generated earlier during the server
        setup.
    -   **MDM Cert Passwd**: The password that was used during hte IoTS cert
        `.pem` to `.pfx` conversion.
    -   **MDM Cert topic ID**: The `USERID` mentioned in the IoTS signing cert.
        Use the following command to extract the `USERID` from the `.pem` file.

        `openssl x509 -in MDM_Certificate.pem -text -noout`
    -   **Mode**

        **Production**
        **Dev**

-   **iOS APNS Config (Apple Dev APNS Cert)**

    > **NOTE**: You will need to provide a password when exporting the file 
    > and it is recommended to save the file using the `.p12` extension. Next change 
    > the `.p12` extension of the file to `.pfx`.

    -   **APNS Cert**: the APNS cert previously created during server
        configuration. This was the section involving the Apple Dev Program and
        generating the APNS Cert from there.
    -   **APNS Cert Passwd**: the password from the iOS APNS cert export during
        server configuration.
    -   **Modes**

        **Prod**
        **Dev**

    -   **EULA**: license agreement that a user must adhere when enrolling iOS
        devices with IoTS (server)

4.  **Save**

