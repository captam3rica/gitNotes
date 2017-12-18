# WSO2 iOS Features Setup

[github](https://github.com/wso2/product-iots)

**Prereqs**

-   Need the following if you are build the WSO2 iOS Agent for development (optional)

    -   Must be part of Apple Developer Program ($99)
    -   Must have Xcode & OpenSSL

-   Why

    -   Report location details to the server.
    -   Perform the ring operation.
    -   Perform notification operations by sending messages to the device.

## Steps 

 -   Get an APNS cert from the [APNS Portal](https://idmsa.apple.com/IDMSWebAuth/login?appIdKey=3fbfc9ad8dfedeb78be1d37f6458e72adc3160d1ad5b323a9e5c5eb2f8e7e3e2&rv=2) 

1.  [iOS server
    config](https://docs.wso2.com/display/IoTS310/iOS+Server+Configurations)

Starting the Services 

-   `cd /bin`

    -   `./broker.sh`
    -   `./iot-server.sh`
    -   `./analytics.sh`

Stopping the Server

-   `ctrl-C` in the CLI window

URLs to access the IoT server components once configured (via HTTPS)

-   WSO2 IoT Server **Device Management Console**: `https://<IOTS_HTTPS_HOST>:9443/devicemgt` 
-   WSO2 IoT Server **Management Console**: `https://<IOTS_HTTPS_HOST>:9443/carbon`
-   WSO2 IoT Server **Device Monitoring Dashboard**: `https://<IOTS_HTTPS_HOST>:9443/portal`

iOS Application support 

HTTPS is required for Apple MDM interaction

-   `vim [iots-home]/conf/app-manager.xml` and add **%httsp%**

        <Config name="AppDownloadURLHost">%https%</Config>    

2.  DEP enrollment

3.  iOS client config

4.  iOS platform config

---

iOS features

-   Obtain CSR file and P2 repo from WSO2
    [here](https://wso2.com/products/iot-server/ios/)

    -   Source code can be modified if desired

-   Register with Apple Dev Enterprise Program'

-   Get an APNS cert from the [APNS Portal](https://idmsa.apple.com/IDMSWebAuth/login?appIdKey=3fbfc9ad8dfedeb78be1d37f6458e72adc3160d1ad5b323a9e5c5eb2f8e7e3e2&rv=2)

-   [MDM APNS
    Cert](https://docs.wso2.com/display/IoTS310/Generating+an+MDM+APNS+Certificate)
