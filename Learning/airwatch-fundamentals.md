# VMware AirWatch Fundamentals

Wed Nov  1 08:43:32 EDT 2017

[myEnrollments](https://mylearn.vmware.com/myHome.cfm?ui=www_edu "myEnrollments page")

## Computing Models

-   Traditional v Consumer

    -   Enterprise centered v Consumer centered
    -   Enterprise secure v Consumer simple


-   Workspace ONE

    -   User centered
    -   Apps, Content, and Devices
    -   SSO with ONE ID
    -   iOS, macOS, and Win10


## AirWatch & the Digital Workspace

-   Device agnostic
-   Initial power-on configuration
-   User-owned can be enrolled by the user

    -   IT settings are separated and can be removed apart from private user data

-   Content Locker
-   Unified Endpoint Management (MEM)
-   Mobile Application Management (MAM)
-   Mobile Content Management (MCM)


## Deployment and Initial Config

-   Enrollment (Agent) > Registration with AW > Profiles and configurations pushed > setup and install on endpoint > Policy monitoring by AW

### Supported Endpoints

-   Symbian
-   Tizen
-   Chrome OS
-   BlackBerry and BB10

-   Printers: Zebra, Toshiba, Avery Dennison, DataMax, Epson

## Deployment Solutions

-   ASP.net web apps on IIS
-   Windows Server

-   Web App - AW console server

-   AW Console

    -   Hosts the AWC
    -   Hosts REST and SOAP APIs - data access for 3rd party solutions

-   MS SQL - Environment and account configurations
-   Devices Services

    -   Self-Service Portal
    -   Hosts REST and SOAP APIs
    -   Delivers device commands and receives device data
    -   Enrolls devices
    -   Provisions Apps

### Optional Components

-   AW Cloud Connector (ACC)

    -   Allows for connection between AW and the enterprise backend infrastructure
    -   SMTP, LDAP/AD, Microsoft Cert Services (PKI), Simple Cert Enrollment Protocol (SCEP PKI), Email Management Exchange 2010 (PowerShell), Black Berry Enterprise Server (BES), 3rd-Party Cert Services (on-prem only), Lotus Domino Web Service (HTTPS), Syslog (event log data)
    -   More can be found in the *VMware CloundConnector Guide*


-   AW Cloud Messaging (AWCM)

    -   ACC uses AWCM to communicate with the AW server.
    -   Eliminate need to access public internet or utilize consumer accounts (Google)
    -   AWCM is a comprehensive substitute for Google Cloud Messaging (GCM) for Android.
    -   The only MDM for Win Rugged devices.
    -   Benefits

        -   Enables secure comms to back-end infrastructure through the ACC
        -   Enable AW Windows Protection Agent real-time communication
        -   No need for 3rd party IDs
        -   Delivers AW commands directly to Adroid and Win Rugged Devices
        -   Enables the ability for remotre control and file management on Android Samsung Approved for Enterprise (SAFE) and Win Rug Devs

    -   Additional info *VMware AW AWCM Guide*


-   VMware AirWatch Tunnel

    -   Authentication between trusted devices, trusted apps, and the back-end infrastructure
    -   Internal Web sites and Web apps using VMware browser
    -   Internal resources using app tunneling for iOS 8 and higher devices using AW Tunnel
    -   Additional info *VMware AW Tunnel Guide


-   AW Content Gateway

    -   Together with AW Content Locker, allows the end user to securely access content from an internal repo.
    -   Internal fileshare access
    -   Similar to other cloud solutions: Google Drive, One Drive, Dropbox, ...
    -   More info *VMware AW Content Gateway Admin*


-   AW Secure Email Gateway (SEG)

    -   Detection and remediation of rogue devices connecting to email
    -   Integration with AW compliance engine
    -   Enhanced visibility through email dashboards
    -   Cert integration for more security
    -   Email attachment controls
    -   Enterprises using Exchange 2010+, Office365, or Google Apps for Work do not necessarily need to use SEG.

        -   MS PowerShell integration or Google password management techniques can be used

    -   Email attachment control requires an SEG server regardless of email server type
    -   More info *SEG Administration*


### AW Deployment Options

-   On-Prem and SaaS (pure cloud or Hybrid cloud)


#### On Prem

-   Single server: Less than 5000 non crit endpoints and proof of concept

![On-Prem Single Server Photo here](/images/2017/10/on-prem-single-server.png "single server on-prem")

-   Multi server:

    -   Dedicated or shared servers
    -   AW Device Services Server can go in DMZ so that mobile endpoints never connect directly to the AW Control Server.

![On-Prem Multi Server Photo here](/images/2017/10/on-prem-multi-server.png "multi server on-prem")


-   On-prem high availability

    -   Add a load balancer with multiple AWDS servers

![On-Prem High Availability Photo here](/images/2017/10/on-prem-high-availability.png "high availability on-prem")


-   On-Prem Disaster Recovery

    -   Requires redundant server configuration for failover
    -   See *VMware AW Recommended Arch Guide*


![On-Prem DR  Photo here](/images/2017/10/on-prem-dr.png "DR on-prem")


#### SaaS (Pure cloud & Hybrid) - Most common install

-   Pure Cloud

![Pure Cloud Photo here](/images/2017/10/Pictures/aw-pure-cloud.png "Pure Cloud")


-   Hybrid Cloud

    -   For orgs that want the flexibility of the cloud and want to integrate AW with internal back-end resources as well.

![Hybrid Cloud  Photo here](/images/2017/10/aw-hybrid-cloud.png "Hybrid Cloud")


-   SaaS Hosting Solutions

![SaaS Hosting Photo here](/images/2017/10/aw-saas-hosting.png "SaaS hosting solutions")

    -   Hosted (Shared solution) and Managed Hosted (Dedicated Solution)
    -   See *Dedicated SaaS Overview Guide*

#### Optional End User Mobile Applications

-   VMware AW Container
-   Boxer
-   Socialcast by VMware - chat and secure social network platform. Communicate between each other, customers, and business partners.
-   AW Browser
-   Content Locker
-   Workspace ONE Catalog
-   AW App Catalog


### Initial Configuration

#### Accessing the AW Console

-   Need the environment URL

    -   SaaS - provided by the account manager using format <environment #>.awmdm.com
    -   On-Prem is customizable

-   Need login credentials

    -   Account manager provides initial creds
    -   Admin can create additional accounts as needed


#### Creating a Sec PIN

-   Upon initial login, prompted for security PIN creation
-   This is used to authorize certain restricted actions in the AW Console

#### Using the Getting Started Wizard

-   Tailored to the specific deployment
-   Workspace ONE, Device, Content, and Applications
-   Videos to help walk through the process


#### Leveraging Industry Templates

-   There are built in templates that can be used/tweaked
-   Use-cases = profiles


## Endpoint Activation, Configuration, and Security

-   `Activate > Configure > Secure > Manage and Support`

### AW Console

-   Web App
-   Customizable
-   Themeable
-   Role based rules


### Nav Features

-   Add button


### Organization Groups

-   Scalability
-   Inheritance
-   Multitenancy
-   Hierarchy of the management environment - policy applied at a certain level will affect all of the groups beneath it.  
-   Drop down menu next to the "Add" button


### Main Menu

-   HUB

hub photo here

-   Devices

device photo here

-   Accounts

accounts photo here

-   Apps and Book Management

    -   Apps, Books, and VPPs

Apps and books photo here

-   Content Management

    -   Anything having to do with user content


-   Email

    -   email management status, deployment type, time last seen, email policy violations, managed devices


-   Telecom

    -   call, sms, and content settings tracking


-   Groups & Settings

    -   manage group things
    -   group settings and access settings for the AW console


### Mobile Device Management

#### Profile Creation

`Add > Select Platform > Specify General & Payload Settings >`


#### Resources

-   Used to add profile deployments
-   Enhance: Exchange, Wifi, and VPN settings in a more granular way
-   The are not necessary


#### Compliance Rules

`Add > Select a platform > Select a device type (if necessary) > Rule options > Actions when out of compliance (40 templates that can be modified) > Assignments > Summary`

More information: *See VMware AW MDM Guide*


### Mobile Application Management (MAM)

-   Internal Apps, Public, Purchased, and Web
-   Local file shares or Link to external (GitHub, I'm guessing)
-   Supported: Android 4.0+, iOS 7.0+, macOS 10.9+, Symbian 3/s60, Win Phone, Win Desktop

`Add (internal or link) > Add Assignment (can add DLP here)`

-   Public apps are added under the *Public* tab
-   Can deploy the app or integrate with another app distribution system
-   VPP is under the *Public* tab
-   Access the Web app from the desktop. Points to a URL

    -   Can be added to the WS ONE spring board

    For more information: *VMware AW MDM Guide*


### Mobile Content Management (MCM)

-   Integrates with AW Content Locker

`Add content > Info > Details > Security > Assign > Deployment`

More info: *VMware AW Mobile Device Management Guide*


### Email Management

-   Secure Email Gateway and Direct Integration: PowerShell or Gmail


### BYOD Management

-   Governance and compliance, Mobile device management, Security
-   Can setup policies with multitenancy in mind
-   Terms of use

    `Devices > Device Settings > Devices & Users > General > Enrollemnt`

BYOD adoption kit: *BYOD Adoption Campaign Kit*

-   Removing corp content when the device leaves

### Win Desktop Management

-   GPOs are not as useful as they use to be
-   AW Agent for Win, Native MDM, Azure AD Integration, Device Staging - utilizing Win Desktop device staging (manual or cmd), Bulk Provisioning
-   Profiles specific to Win Desktop: Creds - used to add better security through pushing Certificates, Passport for Work - the device is registered and integration with Azure AD is required, Encryption, Windows Updates, Windows Licensing

More info: Check out the Windows Deployment demo videos.

### Mobile Security Management (MSM)

#### Multi-layered Sec Approach

-   Trust the User

    -   Enable SSO or other multi-factor auth
    -   Enforce conditional access
    -   Deliver the right apps to the right users
    -   Enable self-service


-   Secure the Endpoint

    -   Encryption & device policies
    -   Enforce device-level passcode
    -   Configure policies
    -   Monitor the device
    -   Integrate security solutions into AW


-   Secure the App

    -   Secure at rest and in transit
    -   restrict apps and set user policies
    -   Restrict access if device is compromised
    -   Use standalone app management, DLP with AW SDK or app wrapping


-   Safeguard the Data

    -   FIPS 140-2 compliant 256-bit SSL encryption
    -   Enforce containerization
    -   Tag data based on source and only allow access based on this
    -   Protect proprietary data with dynamic watermarking
    -   Review reports and logs


-   Protect the Network

    -   Prevent unknown devices from connecting to the network
    -   Cert based access to VPN an WiFi networks
    -   Allow app access on a per app basis with AW Tunnel


#### NSX and AW

-   Integrate NSX into the data center for end-to-end security. Kind of like having a firewall for each application instead of one for the whole network.

## Line of Business Devices (LOB)

`AW Agent > select method of auth > Sign in > Allow access to device > checks for compliancy > Allow non-play store apps > Enterprise apps with Samsung SAFE > confirms to NOX policy > complete`

-   Shared devices
-   Use a "staging user" to setup the device
-   AW Launcher login window

    -   Based on the user login the device will receive a unique configuration


-   Kiosk

    -   Single app mode
    -   `Devices > list view > Select the device > More actions > Enterprise wipe`


## Endpoint Management and Support

-   HUB - Overview, Admin Panel, and Reports & Analytics
-   Devices - Dashboard, List View, Details View, Profiles and Resources, Compliance Policies, Certificates, Staging and Provisioning, Printers

    -   Windows Desktop Remote Management -  Connection, Retry, Screen Share, Registry Manager, File Manager, Registered DDL List, Device Info, Applications, Display/Volume Settings, Send Message, Applet Display and Log Settings, About

-   User Self Service

    -   Content - get access to user content on any device
    -   Branding - `Groups & Settings > All Settings > System > Branding`


## Review

1.  Explain the role AirWatch plays in the digital workspace.

    -   Effective manage multiple devices in an environment and create a better technology experience for end users

2.  Choose the best AW deployment solution based on the requirements of the organization.

    -   On-Prem

        -   Single server (Users < 5000)
        -   Multiple Servers
        -   High Availability - add load balancer
        -   Disaster Recovery - requires multiple locations

    -   SaaS - Hybrid Cloud or Pure cloud
    -   SaaS Hosting - Hosted (Shared) or Managed Hosted (Dedicated)

3.  Recognize ways in which AW helps IT Orgs

    -   Streamlining endpoint activation
    -   Configure settings and policies, applications, and endpoint controls
    -   Maintain endpoint security and data loss protection
    -   Simplify management and support

4.  Leverage VMware resources to learn more about the AW solution
