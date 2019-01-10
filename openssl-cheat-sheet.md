# Openssl Cheat Sheet

## Resources 

-   [Citrix Documentation for APNS](https://docs.citrix.com/en-us/device-manager/xmob-dm-intro-wrapper-con-85/xmob-dm-config-requesting-apns-con.html)

-   [Digital Ocean OpenSSL Documentation](https://www.digitalocean.com/community/tutorials/openssl-essentials-working-with-ssl-certificates-private-keys-and-csrs)

-   [DER v PEM v CRT v CER v KEY](https://support.ssl.com/Knowledgebase/Article/View/19/0/der-vs-crt-vs-cer-vs-pem-certificates-and-how-to-convert-them)

## Command Examples

### Add locality and other info without interacting with openssl

-   I was not able to get this working but you mileage may very.

`-subj "/C=US/\
        ST=Florida/\
        L=Palm_Harbor/\
        O=Skynet_Healthcare/\
        CN=wso2sso.skynethealthcare.com”`

        WSO2Pilot@skynethealthcare

### Creation

#### Generate a Private Key & CSR

-   Enter a challenge password when prompted 

`openssl req -nodes -newkey rsa:2048 -keyout customer.key.pem -out
customer-apns-csr.csr`

#### CSR from Preexisting Key

`openssl req -key domain.key -new -out domain.csr`

#### Cert from Existing Private Key

`openssl req \
       -key domain.key \
       -new \
       -x509 -days 365 -out domain.crt`

#### Self-Signed Cert from Existing Private Key & CSR

`openssl x509 -signkey domain.key -in domain.csr -req -days 365 -out domain.crt`

#### Create a `.pfx` APNS Cert for iOS & MacOS

-   You need the Apple MDM Signing cert to complete this command. Can be
    obtained through the Apple Dev Program.
-   Add a password when prompted. This password will be used when uploading the
    cert to your MDM solution.

`openssl pkcs12 \
        -export -in MDM_Zenprise_Certificate.pem \
        -inkey Customer.key.pem \
        -out apns_identity.p12`

### Conversions 

#### Convert PEM to DER (Binary)

`openssl x509 \
       -in domain.crt \
       -outform der -out domain.der`

#### Convert DER (Binary) to PEM

`openssl x509 \
       -inform der -in domain.der \
       -out domain.crt`

#### Convert CSR to DER Format (Binary format for services like APNS)

`openssl req \
        -inform pem \
        -outform der \
        -in customer.csr \
        -out customer.der`

### Verification

#### Verify csr 

`openssl req \
        -text -noout \
        -verify -in domain.csr`

#### View PEM Enccoded Cert

-   If you get an "Unable to load cert" error then your are trying to view a DER
    encoded cert.

`openssl x509 -in cert.pem -text -noout`

`openssl x509 -in cert.cer -text -noout`

`openssl x509 -in cert.crt -text -noout`

#### View DER Encoded Cert

`openssl x509 \
        -in certificate.der \
        -inform der -text -noout`

### Signing

#### Sign with SHA1WithRSA Format 

-   Apple likes for their CSR's to be signed with this format. 

`openssl sha1 \
        -sign private.key \
        -out data.rsa data.der`

---
---

`openssl req -out wso2sso.skynethealthcare.com.csr -new -newkey \
        rsa:2048 -nodes -keyout wso2sso.skynethealthcare.com.key`

---
---

## APNS Cert creation Research

How do sign CSR with MDM signing cert 

-   CSR to DER format
-   Create CSR plist

    -   This contains multiple certs 

-   Submit to Apple APNS portal 

### Possible option 

1.  Generate private key:

    `openssl genrsa -out myAppName.key 2048`

2.  Generate csr file from private key:

    `openssl req -new -sha256 -key myAppNameCSR.key -out myAppName.csr`

3.  Upload csr file to apple to generate certificate

4.  Download the certificate

5.  Convert certificate to pem file

    `openssl x509 -in aps_development.cer -inform der -out myAppNameCert.pem`

6.  Generate pfx file

    `openssl pkcs12 -export -out myAppNameKey.pfx -inkey myAppNameCSR.key -in myAppNa`

7.  Convert the pfx file to pem file:

    `openssl pkcs12 -nocerts -out myAppNameKey.pem -in myAppNameKey.pfx`

8.  Finally, combine the certificate and key into a single .pem file:

    `cat myAppNameCert.pem myAppNameKey.pem > ckDevelopment.pem`

### WSO2 Notes 

-   followed this article for WSO2 EMM IOS agent APNS integration 
    [click here](https://medium.com/wso2-iot/how-to-setup-apple-push-notification-apn-service-for-wso2-emm-ios-agent-cfd0595f5304)

-   This artilce will walk through steps for how to export “in-house” developed
    iOS app as an enterprise application. Specifically the wso2 emm ios agent
    app. [click here](https://medium.com/wso2-iot/how-to-export-in-house-developed-ios-app-as-an-enterprise-application-dc087bdd64c3)

-   Make sure to have your Apple Dev Enterprise Agent reachout to Apple to enable
    the MDM CSR option in the console. This is one of the filse that you will
    pass to the python script below.
    
    Say something like ...

    >   "I am writing to request a MDM Vendor signing certificate for Acme, Inc.
    >   I am listed as the Team Agent for our Enterprise Developer Program account."

-   I used the following `openssl` commands to generate the customer private key
    and customer CSR.

    `openssl genrsa -des3 -out [customerPrivateKey].pem 2048`
    `openssl req -new -key [customerPrivateKey].pem -out [customer].csr`

-   Used this script to generate plist file to be uploaded to apple apns sight
    [here](https://github.com/grinich/mdmvendorsign)

    -   `python mdm_vendor_sign.py --csr wso2sso.csr --key wso2ssoPrivateKey.pem --mdm mdm_skynet_healthcare.cer`

    -   More notes on the subject [here](http://stackoverflow.com/questions/8501039/apple-mdm-vendor-csr-signing)

-   Upload this `plist` file to
    [identity.apple.com](https://identity.apple.com/pushcert/)

-   
