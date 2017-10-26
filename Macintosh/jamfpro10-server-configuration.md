# jamfPro Server Notes

<a name="toc"></a>
## Table of Contents

1.  [macOS](#macos)
    1.  [Installed Files & Folders](#macos-installed-files-and-folders)
    2.  [Requirements](#macos-requirements)
2.  [Linux](#linux)
    1.  [Installed Files & Folders](#linux-installed-files-and-folders)
    1.  [Requirements](#linux-requirements)
3.  [Windows](#windows)
    1.  [Installed Files & Folders](#windows-installed-files-and-folders)
    1.  [Requirements](#windows-requirements)
4.  [jamfPro Server Installation](#jps-installation)
    1.  [Requirements](#jps-installation-requirements)
    1.  [Database Creation](#jps-database-creation)
    1.  [Run the JSS Installer](#jps-run-installer)
    1.  [Upgrading the JSS](#upgrading-jps-server)
5.  [Setting up the JPS Server](#setting-up-jps-server)
    1.  [Default Configuration Files](#jps-default-config)
    1.  [Network Ports Used](#network-ports-used)
6.  [User Accounts & Groups](#user-accounts-and-groups)
        1. [LDAP Integration](#ldap-integration)
    1.  [JPS User Group Creation](#jps-user-group-creation)
    2.  [JPS User Account Creation](#jps-user-account-creation)
    3.  [Account Preferences](#jps-account-preferences)
    4.  [Password Policy Configuration](#jps-password-policy-configuration)
    5.  [Unlocking a JPS Server User Account](#jps-unlock-user-accounts)
7.  [Activation Code](#activation-code)
8.  [SMTP Server Integration](#smtp-integration)
9.  [Change Management](#change-management)
10. [GSX Integration](#gsx-integration)
    1.  [GSX Integration Requirements](#gsx-integration-requiremetns)
        1.  [GSX Account Creation & Apple Cert](#gsx-account-creation-and-apple-cert)
    1.  [GSX Connection Configuration](#gsx-connection-configuration)  
        1.  [Testing GSX Connection](#gsx-testing-connection)
    2.  [Renewing the Apple Certificate](#gsx-renew-apple-cert)
11. [JPS Summary](#jps-summary)
12. [Server Infrastructure](#server-infrastructure)
    1.  [About Distribution Points](#about-distribution-points)
        1.  [Differences Between DP Types](#dp-type-differences)
    2.  [File Share Distribution Point](#dp-file-shares)
    3.  [Cloud Distribution Point](#dp-cloud)
    4.  [Jamf Distribution Server Instance](#dp-jamf-distribution-server-instance)
        1.  [Requirements](#jds-instance-requirements)
        2.  [Installation](#jds-instance-installation)
        3.  [Configuration](#jds-instance-configuration)
        4.  [Replication](#jds-instance-replication)
    5.  [Jamf Infrastructure Manager Instance](jim-instance)
        1.  [Viewing Inventory](#jim-viewing-inventory)
13. [Advanced Configuration](#advanced-configuration)
    1.  [SSL Certificate](#adv-ssl-certificate)
    1.  [Configuring Tomcat to Work with a Load Balancer](#adv-configure-load-balancer)
    1.  [Tomcat Thread Pool Settings](#adv-tomcat-thread-pool-settings)
    1.  [JPS Web App memory](#adv-jps-web-app-memory)
    1.  [Viewing DB Table Status](#adv-viewing-db-table-status)
    1.  [Clustering](#adv-clustering)
    1.  [Limited Access Settings](#adv-limited-access-settings)
    1.  [Backing up the Database](#adv-backing-up-the-db)
    1.  [Flushing Logs](#adv-flushing-logs)
    1.  [Migrate to Another Server](#adv-migrate-server)
14. [How To ...](#how-to)
    1.  [Restart the Tomcat Service](#how-to-restart-tomcat-service)


[[top][]]

<a name="macos"></a>
## macOS

<a name="macos-installed-files-and-folders"></a>
### Installed Files and Folders

The following files and folders are installed when you run the JSS Installer and everything can be found in `/Library/JSS` or `/Library/JDS/` with the exception of the *LaunchDaemon*:

-   JSS web application - `/Library/JSS/Tomcat/webapps/ROOT/`
-   Apache Tomcat - `/Library/JSS/`
-   server.xml - `/Library/JSS/Tomcat/conf/`
-   This is a modified version of the default *Tomcat* config.
-   Enables SSL, ensures that the JSS appears in the *root* context, and enables database connection pooling.
-   com.jamfsoftware.tomcat.plist - `/Library/LaunchDaemons`
-   keystore - `/Library/JSS/Tomcat/`
    -   Tomcat requrires a *.keystore* file to provide connections over SSL
    -   JSS Database Utility - `/Library/JSS/bin/`  
        -   JSSDatabaseUtil.jar
-   Database backup location - `/Library/JSS/Backups/Database`
-   **Logs** - `/Library/JSS/Logs/`
-   **JDS Instance** - `/Library/JDS/`
    -   More info on *JDS* install files [here](https://www.jamf.com/jamf-nation/articles/339/components-installed-on-jds-instances)

[[top][]]
<a name="macos-requirements"></a>
### Requirements

<a name="jps-server-mac"></a>
#### JPS Server

-   Java 1.7 or Java 1.8 (Java 1.8 is recommended)
-   MySQL 5.6.x or 5.7.x (MySQL 5.7.x is recommended)
-   Apache Tomcat 7 or 8.0.x (Tomcat 8.0.x is recommended)

#### JPS Installer System Requirements

-   A 64-bit capable Intel processor
-   2 GB of RAM
-   400 MB of disk space available
-   macOS 10.7 or later
-   **macOS Server** (recommended)
-   **Java SE Development Kit (JDK)** 1.7 or 1.8 for Mac
  You can download the JDK from [here](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
-   **Java Cryptography Extension (JCE)** Unlimited Strength Jurisdiction Policy Files 1.7 or 1.8 (*must be the same version as Java*)
  You can download the JCE from: [here](http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html)
-   **MySQL** 5.6.x or 5.7.x (MySQL 5.7.x is recommended)
  You can download MySQL from: [here](https://www.mysql.com/downloads/)
-   Ports **8443** and **9006** available

#### JPS DB Utility

-   MySQL 5.6.x or 5.7.x (MySQL 5.7.x is recommended)

#### JPS Distribution Point(DP) Installer for Mac

-   An Intel processor
-   2 GB of RAM
-   **100GB** of disk space available
-   macOS 10.7 or later with macOS Server 1.4.3 or later installed

[[top][]]
<a name="linux"></a>
## Linux

#### JDS Installer for Linux

-   An Intel processor
-   2 GB of RAM
-   100 GB of disk space available
-   One of the following operating systems:
    -   Ubuntu 10.04 LTS - Ubuntu .04 LTS Server
    -   Red Hat Enterprise Linux (RHEL) 6.4, 6.5, 6.6, or 7.0
    **Note**: To install a JDS instance on a Linux operating system that is running on a virtual machine, you need a virtualization platform that provides **SMBIOS** information.

[[top][]]
<a name="windows"></a>
## Windows

[[top][]]
<a name="jps-installation"></a>
## JPS Installation

<a name="jps-installation-requirements"></a>
### Required Software

-   From previous *Requirements* sections
    -   [macOS](#macos-requirements)
    -   [Linux](#linux-requirements)
    -   [Windows](#windows-requirements)

<a name="jps-database-creation"></a>
### Database Creation

1.  Open a **Terminal** to access the **MySQL** command line

    `mysql -u root -p`

2.  Enter the password for the *root* user
3.  Create the database

    `CREATE DATABASE [server-name];`

4.  Create a new *MySQL* user

    `CREATE USER '[username]'@'localhost' IDENTIFIED BY '[password]';`

5.  Grant access to the user so that it can access the database

    `GRANT ALL ON [server-name].* TO '[username]'@'localhost';`

<a name="jps-run-installer"></a>
### Run the JSS Installer

-   The **JSS Installer.mpkg** installs *Apache Tomcat* and the *JSS web app*

<a name="upgrading-jps-server"></a>
### Upgrading the JSS

1.  Backup the *JSS DB* using the *JSS Database Utility*
2.  Copy the latest *JSS Installer* to the macOS server.

[[top][]]
<a name="setting-up-jps-server"></a>
## Setting up the JPS Server

<a name="jps-default-config"></a>
### Default Config Files

-   Update Inventory policy
-   Recurring check-in frequency
-   Mobile device inventory collection frequency

<a name="network-ports-used"></a>
### Network Ports Used

-   [JPS Knowledge Base](https://www.jamf.com/jamf-nation/articles/34/network-ports-used-by-jamf-pro)

[[top][]]
<a name="user-accounts-and-groups"></a>
## User Accounts & Groups

| User | Definition     |
| :------------- | :------------- |
| Administrator       | Grants all privileges  |
| Auditor   | Grants all read privileges  |
| Enrollment Only   | All privileges needed to enroll computers and mobile devices   |
| Custom    | Apply privileges manually   |

-   Groups can be created for multiple users needing the same privileges.
-   Users and groups can be added manually, or they can come from a **LDAP** directory service.
    -   It is recommended to have at least one account that is local to the JPS server just in case the LDAP server becomes unavailable.

<a name="ldap-integration"></a>
#### LDAP Integration

-   [Integration with LDAP Directory Services](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Integrating-with-LDAP-Directory-Services.html)

<a name="jps-user-group-creation"></a>
### JPS User Group Creation

`JPS Server Home Screen > Settings > System Settings > JPS User Accounts & Groups`

-   Click **New**
    -   Choose **Create Standard Group** or **Add LDAP Group**
-   Use the **Group** pane to configure basic group settings
    -   If you choose *Custom* from the **Privilege Set** menu, select the **Privileges** tab and select the privileges that you would like the group to have.
-   **Save**

<a name="jps-user-account-creation"></a>
### JPS User Account Creation

`JPS Server Home Screen > Settings > System Settings > JPS User Accounts & Groups`]

-   click **New**
    -   Choose **Create Standard Group** or **Add LDAP Group**
-   On the **Account Pane**, enter all necessary information regarding the account.
-   Choose an access level from the **Access Level** menu

    -   **Full Access**: full access the JPS Server
    -   **Site Access** - access to a JPS server site
    -   This will only show if there are multiple sites in the JPS server
    -   **Group Access** - add an account to a standard group
    -   This will only show if groups have been created in the JPS server
-   Do one of the following:
    -   If the account has *full access*, choose a privilege set for the **Privilege Set** menu. If *Custom* is chosen, click **Privileges** and select the privileges that you would like the user to have.
    -   If the account was added to a group, click **Group Membership** and select the desired groups.
-   **Save**

<a name="jps-account-preferences"></a>
### Account Preferences

-   Log in the JPS server
-   Select the **disclosure triangle** next to your name. Then, click **Preferences**
-   Select the **Language & Region** tab to configure
-   Click **Search Preferences** and use the menu to configure
    -   By default, this is set to *Exact match* but can be changed to **Starts with** or **Contains**
-   **Save**

<a name="jps-password-policy-configuration"></a>
### Password Policy Configuration

`JPS Home Page > Settings > System Settings > JPS User Accounts & Groups`

Applies to all standard *JPS* server users. However, the JPS server password policy does not apply to users added via **LDAP**

-   Click **Password Policy**
-   Click **Edit**
-   Select desired settings
-   **Save**

<a name="jps-unlock-user-accounts"></a>
### Unlocking a JPS Server User Account

This is done if an account is locked due to too many login attempts. If the user is allowed to unlock their own account, the user will be able to reset their own password. In this case, an email is sent to the address specified by the user in their preferences pane.

For an email to be sent to the user, an SMTP server must be configured - [SMTP Server Integration](#smtp-integration)

`JPS Server Home Page > Settings > JPS User Accounts & Groups`

-   Select the JPS user account with status **Disabled**
-   Click **Edit**
-   Select **Enable** from the *Access status* pop-up
-   **Save**

For more information about *Sites* and how to add them to the JPS Server, see [Sites](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Sites.html) on the Casper Suite Admin's Guide.

[[top][]]
<a name="activation-code"></a>
## Activation Code

Can change the *Activation Code* and the *Organization Name* here

`JPS Home Page > Settings > System Settings > Activation Code`

-   Click **Edit**
-   Enter new activation code
-   **Save**

[[top][]]
<a name="smtp-integration"></a>
## Integration with an SMTP Server

-   Send event notifications to JPS server users - see [Email Notifications](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Email-Notifications.html)
-   Send **enrollment** invitations
-   Send mass emails to end users

### Configure SMTP Settings in JPS Server

`JPS Sever Home Page > Settings > System Settings > SMTP Server`

-   Click **Edit**
-   Configure necessary settings
-   **Save**

#### Test the SMTP connection

`JPS Server Home Page > Settings > System Settings > SMTP Server`

-   Click **Test**
-   Enter the email address that you would like to test with. Then, click **Test** again.

### Related in the JPS Admins Guide

-   [Email Notifications](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Email-Notifications.html)
-   [User Initiated Enrollment Settings](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/User-Initiated-Enrollment-Settings.html)
-   [Performing Mass Actions for Computers](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing-Mass-Actions-for-Computers.html)
-   [Performing Mass Actions for Mobile Devices](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing-Mass-Actions-for-Mobile-Devices.html)

[[top][]]
<a name="change-management"></a>
## Change Management

Can be configured to the **JAMFChangeManagement.log** and/or to a **syslog** server.

**The Change Management Log**

-   Date and time of the change
-   Username of the admin that made the change
-   Object type (such as JPS user account)
-   Object name (such as username JPS user account)
-   Actions
-   Details about the change

Can view changes to a specific object by looking at that objects **History**

#### Requirements

The account used to run **Tomcat** must have write permissions for the
directory where the *JAMFChangeManagement.log* is located.

### Configure Change Management Settings

`JPS Server Home Page > Settings > System Settings > Change Management`

-   Edit
-   Change Management
-   Edit
-   Configure desired settings
-   **Save**

### View Change Management Logs in JPS Server

`JPS Server Home Page > Settings > System Settings > Change Management > Logs`

-   Do one of the following:
    -   To view the *Object*, click on the object
    -   To view *Details*, click on **Details**

For more information regarding syslog setup on a **macOS** server - [Change Management with the Casper Suite: macOS Setup Guide](https://www.jamf.com/jamf-nation/articles/129/change-management-with-the-casper-suite-macos-setup-guide)

[[top][]]
<a name="gsx-integration"></a>
## Integrating with GSX

**Note**: GSX may not always return complete purchasing information. Only the information found in GSX is returned.

<a name="gsx-integration-requiremetns"></a>
#### Requirements

-   GSX account with the **Manager** role, access to **Web Services**, and access to coverage/warranty information
-   An **Apple Certificate** (.pem or .p12)

<a name="gsx-account-creation-and-apple-cert"></a>
How to get a GSX account and an Apple cert - [Integrating with Apple's GSX](https://www.jamf.com/jamf-nation/articles/26/integrating-with-apple-s-global-service-exchange-gsx)

<a name="gsx-connection-configuration"></a>
### Configure GSX Connection Settings

`JPS Home Page > Settings > Global Management > GSX connection`

-   Edit
-   Select **Enable Connection to GSX**
    -   **Note**: Some settings may be configured already if JPS server was   used to generate a **CSR**
-   Enter username and account number for the **GSX Account**
-   Configure *Region* and *URL* as needed
-   Select **Certificate-based Authentication** and click **Upload**
-   Follow the onscreen prompts to upload **Apple Cert**

<a name="gsx-testing-connection"></a>
#### Testing the GSX Connection

`JPS Server Home Page > Settings > Global Management > GSX Connection`

-   Click **Test**.
-   Click, **Test** again

<a name="gsx-renew-apple-cert"></a>
#### Renewing the Apple Certificate

You may upload a new Apple Cert through the JPS server without losing connection to GSX.

`JPS Server Home Page > Settings > Global Management > GSX Connection`

-   Click **Edit**
-   Click **Renew**
-   Follow the onscreen prompts

#### Related Information

Take a look at the following JPS Admin guide articles for more information:

-   [Performing Mass Actions for Computers](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing-Mass-Actions-for-Computers.html)
-   [Performing Mass Actions for Mobile Devices](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing-Mass-Actions-for-Mobile-Devices.html)
-   [Viewing and Editing Inventory Info for a Mobile Device](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Viewing-and-Editing-Inventory-Information-for-a-Mobile-Device.html)
-   [Local Enrollment Using Recon](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Local-Enrollment-Using-Recon.html)
-   [Remote Enrollment Using Recon](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Remote-Enrollment-Using-Recon.html)

[[top][]]
<a name="jps-summary"></a>
## JPS Summary

-   Keeps information about the JPS Server implementation.
-   Can send to jamf for troubleshooting purposes
-   Can be viewed in a browser window or sent to Jamf

Info Stored by Default

-   Number of managed and unmanaged computers
-   Number of managed mobile devices
-   OS(s) on the JPS server
-   Path to the JPS server web app
-   Apache Tomcat version
-   Info regarding the version of Java installed on the host JPS
-   Info about the MySQL connection and configuration

The following can be added the JPS summary as needed

-   Computers
-   Mobile devices
-   Users
-   System settings
-   Global management
-   Computer management-server Infrastructure
-   Computer management-management framework
-   Mobile Device Management (MDM)
-   Network Organization
-   Database

#### Requirements

-   Need a valid jamf-nation account

### View the JPS Summary

`JPS Home Page > Settings > JPS Information > JPS Summary`

1.  Select the items that you would like to include
2.  Click **Create**
3.  Click **Back** in the browser window to go back to the JPS

### Sending the JPS Summary to Jamf

`JPS Home Page > Settings > JPS Information > JPS Summary`

1.  Select the items that you would like to include
2.  Click **Send Summary to Jamf**
3.  Enter jamf-nation credentials and click **Send**

### Related Information

-   [Customer Experience Metrics](https://www.jamf.com/jamf-nation/articles/364/customer-experience-metrics)

[[top][]]
<a name="server-infrastructure"></a>
## Server Infrastructure

<a name="about-distribution-points"></a>
### About Distribution Points (DPs)

File Types

-   Packages
-   Scripts
-   In-house apps
-   In-house eBooks

JPS supports **3** types of DPs

-   File Share
-   Cloud
-   JDS Instance

By default, the first **DP** add to the JPS is the **Master DP**. The master is seen as the authoritative source for all files during replication. The master can be changed at any time. Below are the differences between the DPs

<a name="dp-type-differences"></a>
**Differences Between DPs**

|   ...   | File Share DP     | Cloud DP | JDS Instance |
| :------------- | :------------- | :------------- | :------------- |
| **Description** | Stand server configured to be a DP | DP that uses one of the following content delivery networks (CDNs) to host files: Rackspace cloud files, Amazon Web Services (AWS), Akamai | DP that is managed by the JPS, similar to a computer or mobile device |
| **Max Number Per JPS** | Unlimited | One | Unlimited |
| **Server/Platform** Requirements  | Any server with Apple Filing Protocol (AFP) or Server Message Block (SMB) shares | None | **Mac or Linux** |
| **Protocol** | AFP, SMB, HTTP, or HTTPS | HTTPS | HTTPS |
| **Ports** | AFP: 548, SMB: 139, HTTP: 80, HTTPS: 443 | 443 | 443 |
| **Authentication Options**   | AFP or SMB - No auth, Username and password. HTTP or HTTPS - No auth, Username and password, Certificate-based auth  | None  | - No auth. Certificate-based auth |
| **Files that can be hosted**   | Packages, Scripts  | Packages, In-house apps, In-house eBooks, **Note**: if cloud it's used, scripts will be stored in the **jamf software database** | Packages, In-house apps, In-house eBooks, **Note**: if cloud it's used, scripts will be stored in the **jamf software database** |
| **Parent-Child Capabilities**   | No  | No | Yes |
| **File Replication Method**   | Replication to file share DPs must be initiated from jamf Admin  | Replication to a cloud DP must be initiated from jamf Admin | Replication to **root JDS** instance must be initiated from jamf Admin. Replication to **non-root JDS** instances happen automatically and immediately |
| **Selective Replication**   | Not available when replicating to file share DPs | Available when replicating to **Cloud** DP if the **master** DP is the **JDS instance** or **file share** DP. The files for replication must specify in the JPS and the replication initiated from jamf admin | Not available when replicating to **root JDS** instances. Available when replicating to **non-root JDS** instances. The files for replication must be specified in the JPS. The replication from non-root parent to child instances is initiated on check-in with the JSS

[[top][]]
<a name="dp-file-shares"></a>
### File Share DPs  

[jamf-nation: File Share DP](https://www.jamf.com/jamf-nation/articles/325/setting-up-a-file-share-distribution-point)

Once added, you can do the following with a *File Share DP*

-   Make it a master
-   Choose a failover DP
-   Configure HTTP downloads

#### Adding a File Share DP

`JPS Home Page > Settings > Server Infrastructure > File Share Distribution Point`

1.  Click **New**
2.  Use the *General Settings* pane to configure basic settings
3.  Click the **File Sharing** tab and enter the necessary information
    1.  Optionally click **HTTP** to setup HTTP downloads
4.  **Save**

#### Replicating Files to a FS DP

1.  Login to JPS
2.  In the sidebar, select the FS DP that you would like replicate to
3.  Click **Replicate**

All of the files on the *Master* will be pushed to the FS DP that you chose.

**Other Resources**

-   [Using Appache to set up a Files Share on Linux](https://www.jamf.com/jamf-nation/articles/216/using-apache-http-server-to-enable-http-downloads-on-a-linux-file-share-distribution-point)
-   [Set up a file share on Linux using Samba](https://www.jamf.com/jamf-nation/articles/215/setting-up-a-file-share-distribution-point-on-linux-using-samba)
-   [Using IIS to setup a Win Serv 2008 File Share](https://www.jamf.com/jamf-nation/articles/309/using-iis-to-enable-http-downloads-on-a-windows-server-2008-or-2012-file-share-distribution-point)

[[top][]]
<a name="dp-cloud"></a>
### Cloud DP

The following cloud services are supported by the JPS:

-   RackspaceCloud Files
-   Amazon S3 or Amazon CloudFront
-   Akamai NetStorage
-   JamfCloud Distribution Service (JCDS)

You can choose to make the cloud DS the *Master* and whether or not you would like to replicate all files or just a subset of files if the *Master* is a **JDS** or **File Share** DP.

Amazon CloudFront signed URLs and Akamai Remote Auth are supported by the JPS. Learn more about Amazon CloudFront [here](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-urls.html)

#### Requirements

**Akamai** must be configured to use **FTP** (20-21)

**Note**: for **Casper Suite v8.x** upgrades, please reference this [link](https://www.jamf.com/jamf-nation/articles/327/migrating-packages-and-scripts)

Files being uploaded to a cloud DP must not contain the following characters:

-   `/ : ? < > \ * | ” [ ] @ ! % ^ #`

#### Configure Cloud DP

`JPS Home Page > Settings > Server Infrastructure > Cloud Distribution Point`

1.  Click **Edit**
2.  Select a *CDN* from the **Content Delivery Network** menu
3.  Configure the settings
4.  **Save**

#### Testing the Connection

`JPS Home Page > Settings > Server Infrastructure > Cloud Distribution Point`  

1.  Click **Test**
2.  Click **Test** again

#### Replicating Files to a Cloud DP

All files can be replicated, or just a subset of files.

1.  Login to **JPS**
2.  In the sidebar, select the *Cloud DP* that you would like to replicate to.
3.  Click **Replicate**

#### More Info

[jamfPro User Guide: Network Segments](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Network-Segments.html)

-   Network segments can be used to ensure that clients are connecting to the closest DP.

[jamf-nation Knowledge Base: Config Cloud DP on jamfPro](https://www.jamf.com/jamf-nation/articles/383/information-required-to-configure-a-cloud-distribution-point-in-jamf-pro)

-   Determine the necessary info needed from your cloud provider
-   [jamf cloud service](https://www.jamf.com/products/jamf-cloud/)

[[top][]]
<a name="dp-jamf-distribution-server-instance"></a>
### JDS Instance

<a name="jds-instance-requirements"></a>
#### Requirements

*For Mac*

-   Intel processor
-   2 GB of RAM
-   100 GB of disk space
-   macOS 10.7 or later with macOS Server 1.4.3 or later

*For Linux*

-   Intel processor
-   2 GB of RAM
-   100 GB of disk space
-   One of the following distros
    *   Ubuntu 10.04 - 16.04 LTS Server
    *   RHEL 6.4, 6.5, 6.6, or 7.0

        **NOTE**: For virtual environments, the VM platform must provide **SMBIOS** information

To manage JDS instances from the JPS, you need a valid SSL certificate on the JPS host server. See [SSL Certificate](dp-jds-ssl-certificate)

**Note**: If you have upgraded from the Casper Suite v8.x, you must migrate the scripts and packages on your master distribution point before configuring JDS instances. (For more information, see the [Migrating Packages and Scripts][ac3617d1] Knowledge Base article.)  

  [ac3617d1]: https://www.jamf.com/jamf-nation/articles/327/migrating-packages-and-scripts "Migrating Packages and Scripts"  

<a name="jds-instance-installation"></a>
#### Installation

*JDS Instance Installation on Mac*

1.  Copy the `JDS Installer.pkg` to the server you will be using as the *JDS* instance.  

**Note**: Login to [jamf-nation][fc61e61c] to grab the latest installer.

  [fc61e61c]: https://www.jamf.com/jamf-nation/ "Jamf Nation Login"

2.  Launch the installer
3.  Follow the onscreen prompts

*JDS Instance Installation on Linux*

1.  Copy the `JDS Installer.run` installer to the server you will be using as the *JDS* instance.

**Note**: Login to [jamf-nation][7985d839] to grab the latest installer.

  [7985d839]: https://www.jamf.com/jamf-nation/ "Jamf Nation Login"

2.  Login to server as a user with *admin* privileges
3.  Launch the installer

    `sudo /path/to/JDS Installer.run`

4.  Enter a *JDS* hostname. Example: `jds.acme.com`
5.  Enter a *JPS* URL. Example: `https://`jps.acme.com:8443/
6.  Enter credentials for the *JPS* user account that has the *JDS* privileges
7.  Follow the onscreen prompts to complete the installation

<a name="jds-instance-configuration"></a>
#### Configuration

`Login to JPS > Settings > Server Infrastructure > JDS Instances`

1.  Click the *JDS* instance to configure
2.  Click **Edit**
3.  Use the *General* to edit basic settings
4.  Click the **Distribution Point** tap to configure distribution settings.
5.  Click **Save**  

<a name="jds-instance-replication"></a>
#### Replicating Files to the Root JDS Instace

During the replication process, all files on the Master DP are sent over to the root JDS instance. Then, files are replicated to Child JDS instances from their non-root Parents JDS instances upon check-in with the JPS. Files are replicated according to the non-root instance configuration.

#### Viewing Replication Progress

`Login to JPS > Settings > Server Infrastructure > JDS Instances`

1.  Click **Grid View** at the top of the list.

    If the master DP is a JDS instance it is marked by `**`. If the master DP is a different type of DP it is marked by `*`.

#### Viewing JDS Instance Inventory Information

The JPS displays the following inventory info fore each JDS instance:

-   If it is a master DP
-   If it is a root instance
-   Hostname
-   URL
-   Reported IP address
-   jamfds binary version
-   Operating System (OS)
-   OS version
-   Total memory
-   Available memory
-   HD size
-   HD space utilized

`Login to JPS > Settings > Server Infrastructure > JDS Instances`

1.  Select the instance you would like to view.

#### More Info

[jamfPro Admin Guide: Network Segments](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Network_Segments.html "Network Segments")

[Knowledge Base: Components Installed on JDS Instances](https://www.jamf.com/jamf-nation/articles/339/components-installed-on-jds-instances "Components Installed on JDS Instances")

[Knowledge Base: Changing JDS Hierarchy](https://www.jamf.com/jamf-nation/articles/330/changing-jds-hierarchy "Changing JDS Hierarchy")

[Knowledge Base: Uninstalling a JDS Instance](https://www.jamf.com/jamf-nation/articles/340/uninstalling-a-jds-instance "Uninstalling a JDS Instance")

[[top][]]
<a name="jim-instance"></a>
### Jamf Infrastructure Manager Instances

A **JIM** instance is a service that is managed by the JPS and it can be used to host the following services.

-   **LDAP Proxy** - This allows traffic to pass securely between LDAP and the JPS. The JIM and the LDAP Proxy typically reside within a **DMZ**.

    For more info see [LDAP Proxy](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/LDAP_Proxy.html) in the jamfPro Admin Guide.

-   **Healthcare Listener** - This allows healthcare information to pass to the JPS securely.

    For more info see [Healthcare Listener](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Healthcare_Listener.html "JamfPro Admin Guide: Healthcare Listener") in the jamfPro Admin Guide.

JIM instances can be installed on Linux and Windows servers. [Jamf Infrastructure Manager Instance](http://docs.jamf.com/infrastructure-manager/1.3.2/Jamf_Infrastructure_Manager_Overview.html "Jamf Infrastructure Manager Instance")

<a name="jim-viewing-inventory"></a>
#### Viewing Inventory Information for a JIM.

The following is listed in the JIM instance inventory:

-   Last check-in
-   IP Address at Last check-in
-   OS and OS version

`Login to the JPS > Settings > Computer Management`

1.  In the *Computer Management-Server Infrastructure* section, click **Infrastructure Managers**. A list of Infrastructure Manager Instances will be displayed along with the services that are installed on each instance.
2.  Select an instance to view its inventory information.

#### Other Considerations

-   Only the display name and check-in interval can be changed on a JIM instance. By default, the check-in interval is set to **30 seconds**.
-   A JIM instance cannot be deleted if there are dependencies for the Infrastructure Manager. If an LDAP proxy is hosted on the JIM, the JIM cannot be deleted. You must first delete the LDAP Proxy.
-   Healthcare Listeners are deleted when the JIM instance is deleted.

#### More Info

-   See [jamfPro Admin Guide: Email Notification](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Email_Notifications.html "Email Notification")

[[top][]]
<a name="advanced-configuration"></a>
## Advanced Configuration

[[top][]]
<a name="adv-ssl-certificate"></a>
### SSL Certificate

The Tomcat settings in the JPS allow you to create an cert from the **CA** that is build into the JPS. You can also upload a cert keystore from a local CA or trusted third party.

**Note**: If jamfCloud is used, the Tomcat settings are managed by Jamf and are not accessible.

#### Requirements

JPS must be the root web app, and the user running the Tomcat process must have +rw access to the Tomcat `server.xml` file.

#### Creating or Uploading SSL Certificate

`Login to JPS > System Settings > Apache Tomcat Settings > Edit`

1.  Select **Change the SSL Certifiate used for HTTPS** and click **Next**
2.  Follow the onscreen prompts
3.  Restart Tomcat service so that changes will take affect. Got to [Restart Tomcat][]

#### More Info

-   [Using OpenSSL to Create a Certificate Keystore for Tomcat](https://www.jamf.com/jamf-nation/articles/117/starting-and-stopping-tomcat "Using OpenSSL to Create a Certificate Keystore for Tomcat")

[[top][]]
<a name="adv-configure-load-balancer"></a>
### Configuring Tomcat to Work with a Load Balancer

Must configure the following:

-   remote IP value
-   Proxy Port
-   Scheme in Tomcat's `server.xml`

These can be edit in the **Load Balancing** settings from with the JPS so that you do not have to edit the `server.xml` file manually.

#### Requirements

JPS must be installed as the root web app, and the user runner the Tomcat service must have `+rw` on the `server.xml` file.

#### Configure LB Settings

`Login to JPS > Settings > System Settings`

1.  Click **Apache Tomcat Settings**
2.  Click **Edit**
3.  Select **Configure Tomcat for working behind a load balancer**
4.  Click **Next**
5.  Follow the onscreen prompts
6.  Restart Tomcat for changes to take affect. Got to [Restart Tomcat][]

[[top][]]
<a name="adv-tomcat-thread-pool-settings"></a>
### Tomcat Thread Pool Settings

Tomcat Thread Pool allows you to edit the `server.xml` file from the JPS without have to edit it manually.

#### Requirements

JPS must be installed as the root web app, and the user runner the Tomcat service must have `+rw` on the `server.xml` file.

#### Configuration

`Login to JPS > Settings > System Settings`

1.  Click **Apache Tomcat Settings**
2.  Click **Edit**
3.  Select **Update the settings for Tomcat's thread pool**
4.  Click **Next**
5.  Follow the onscreen prompts
6.  Restart Tomcat for changes to take affect. Got to [Restart Tomcat][]

[[top][]]
<a name="adv-jps-web-app-memory"></a>
### JPS Web App memory

Allows viewing of JPS web app memory utilization. the JPS Database Utility can be used to edit memory settings.

#### View Memory Usage

`Login to JPS > Settings > JPS Information > Memory Usage`

#### Configure Web App Mem

1.  Open JPS DB Util on the JPS host server.

    See Files and Folder Locations for you platform [macOS][], [Linux][], or [Windows][]

2.  Enter the credentials for the server admin account and click **OK**
3.  If the JPS is unable to locate the MySQL binary, it will prompt for the location. Click **continue** and enter the full path.
4.  From the menu bar `Utilities > Change Tomcat Settings`
5.  Use the sliders to configure memory allocation
6.  Click **Apply Settings**
7.  Restart Tomcat when prompted

[[top][]]
<a name="adv-tomcat-permgen-size"></a>
### Tomcat PermGen Size

The the JPS DB utility to manage settings for PermGen.

**Note**: When upgrade from Tomcat 7 to 8, the min and max PermGen sizes are set to 256 MB. When using Java 1.8, PermGen does not need to be set.

#### Configure PermGen Size

1.  Open JPS DB Util on the JPS host server.

    See Files and Folder Locations for you platform [macOS][], [Linux][], or [Windows][]

2.  Enter the credentials for the server admin account and click **OK**
3.  If the JPS is unable to locate the MySQL binary, it will prompt for the location. Click **continue** and enter the full path.
4.  From the menu bar `Utilities > Change Tomcat Settings`
5.  Use the sliders to configure memory allocation
6.  Click **Apply Settings**
7.  Restart Tomcat when prompted

[[top][]]
<a name="adv-viewing-db-table-status"></a>
### Viewing DB Table Status

MySQL DB tables can become corrupt if the DB is not shutdown properly, or the DB is running to slow and unable to keep with the number of computers in the environment.

`Log in to JPS > Settings > JPS Information > Database Table Status`

[[top][]]
<a name="adv-clustering"></a>
### Clustering

Multiple JPS instances pointing to the same DB. Good for large environments or environments that have a JPS in a DMZ.

It is recommended to configure a clustered environment from the JPS that is designated as the *Master*. Then, create secondary JPS web apps that point to the same DB. However, clustering can be configured after the fact if multiple JPS instances exist and are pointing to the same DB.

The Cluster settings in the JPS can configure the frequency at which JPS web apps sync with the DB, and which web app should function as *Master*

The *Master* handles tasks like upgrading the DB schema and flushing logs from the DB. You can also view other web apps pointing to the same DB, and other info about the secondary web apps.

#### Requirements

For JPS web apps not a DMZ, you need a *load balancer* with the address of the JPS.

`https://jps.acme.com:8443/`

The load balancer should route traffic to the servers running the JPS web app.

#### Configure Clustering Settings

`Log in to JPS > Settings > System Settings > Clustering > Edit`

1.  Configure the settings on the pane. The specify a *Master* select the **Master** option.
2.  Click **Save**
3.  If multiple JPS instances are already pointing to the same DB, make sure to [Restart the Tomcat service](#how-to-restart-tomcat-service) on each one so that the changes take effect.

#### More Info

-   [Knowledge Base: Caching Configuration](https://www.jamf.com/jamf-nation/articles/428/memcached-installation-and-configuration-for-clustered-jamf-pro-environments "Caching Configuration")
-   [Knowledge Base: Installing JPS Web App in DMZ](https://www.jamf.com/jamf-nation/articles/174/installing-a-jss-web-application-in-the-dmz "Installing JPS Web App in DMZ")

[[top][]]
<a name="adv-limited-access-settings"></a>
### Limited Access Settings

In a clustered environment, you can use the *Limited Access* settings in the JPS to disable the JPS interface and limit types of devices that can communicate with the JPS. Most commonly used in situations where a JPS is in a *DMZ*

*The following options are available:*

-   Full Access
-   Computer access only
-   Mobile device access only
-   Computer and mobile device access

**Note**: Selecting any other that *Full Access* will disable the JPS interface.

#### Configuration

`Log in to the JPS > Settings > System Settings > Limited Access`

1.  Select settings for each JPS web app
2.  **Save**

[[top][]]
<a name="adv-backing-up-the-db"></a>
### Backing up the DB

Backups can be done manually as needed, or configured to run automatically. Time taken depends on the size of the DB. Other DB backups can be scheduled for deletion as well.

#### Create a DB Backup

1.  Open JPS DB Utility

    See Files and Folder Locations for you platform [macOS][], [Linux][], or [Windows][]

2.  Enter the credentials for the server admin account and click **OK**
3.  If the JPS is unable to locate the MySQL binary, it will prompt for the location. Click **continue** and enter the full path.
4.  Configure the settings to match your DB configuration and click **Apply Settings**
5.  Click **Save Backup Now**
6.  Select a location to save the DB backups

The JPS DB Utility creates a backup and saves it as a `.sql.gz` file.

#### Scheduling DB Backups

1.  Open JPS DB Utility

    See Files and Folder Locations for you platform [macOS][], [Linux][], or [Windows][]

2.  Enter the credentials for the server admin account and click **OK**
3.  If the JPS is unable to locate the MySQL binary, it will prompt for the location. Click **continue** and enter the full path.
4.  Configure the settings to match your DB configuration and click **Apply Settings**
5.  Select the **Schedule automatic backups for** checkbox and choose the hour of day.
    -   Deselect this box to stop automatic backups  
6.  For a custom location, specify a path and click **Change**
7.  To automate deletion, select the **Delete backups older than** box and choose how many days before deletion.

Backups are taken at the *HOUR* specified

#### Restore DB Backups

1.  Open JPS DB Utility

    See Files and Folder Locations for you platform [macOS][], [Linux][], or [Windows][]

2.  Enter the credentials for the server admin account and click **OK**
3.  If the JPS is unable to locate the MySQL binary, it will prompt for the location. Click **continue** and enter the full path.
4.  Configure the settings to match your DB configuration and click **Apply Settings**
5.  Click **Restore Backups Now ...**
6.  Select the backup (`.sql` or `.sql.gz`) that you would like to restore.
7.  When prompted, [Restart Tomcat](#how-to-restart-tomcat-service "Restart Tomcat")

[[top][]]
<a name="adv-flushing-logs"></a>
### Flushing Logs

Flushing the logs reduce overall size or the DB and can speed up queries.

*The following types of logs can be flushed*

-   Application usage logs
-   Computer usage logs
-   Policy logs
-   Casper remote logs
-   Screen sharing logs
-   Casper imaging logs
-   Computer and mobile device management history logs
-   JDS management history
-   Computer inventory reports (from past inventory submissions)
-   Mobile device inventory reports (from past inventory submissions)
-   **JPS Acess Logs**
-   **Change Management Logs**
-   Event logs

Log flushes can be scheduled or performed manually.

For more info regarding which logs are flushed and DB tables that are affect see [Knowledge Base: Data and Tables Affected by Log Flushing](https://www.jamf.com/jamf-nation/articles/412/data-and-tables-affected-by-log-flushing "Data and Tables Affected by Log Flushing") and the Jamf Pro Admin Guide: [Flushing Logs](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Flushing_Logs.html "Flushing Logs")

#### Schedule Log Flushing

`Log in to the JPS > Settings > System Settings > Log Flushing > Edit`

1.  Use the pop-up menus to choose the number of days, weeks, or months to flush logs.
2.  Choose time of day from **Time to Flush Logs Each Day**
3.  **Save**

#### Manual Flush

`Log in to the JPS > Settings > System Settings > Log Flushing > Flush Manually`

1.  Select each type of log to be flushed
2.  Choose how from back from the **Flush Logs Older Than** menu
3.  Click **Flush**

#### More Info

*From Jamf Pro Admin Guide:*

-   [Viewing and Flushing Policy logs for a computer](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Viewing_the_History_for_a_Computer.html#src-16441277_id-.ViewingtheHistoryforaComputerv10.0.0-VAFPLFAC "Viewing and Flushing Policy logs for a computer")

-   [Viewing and Flushing Logs for a Policy](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Managing_Policies.html#src-16441296_id-.ManagingPoliciesv10.0.0-VAFLFAP "Viewing and Flushing Logs for a Policy")

-   [Viewing the History for a Computer](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Viewing_the_History_for_a_Computer.html "Viewing the History for a Computer")

-   [Viewing the Management History for a Mobile Device](http://docs.jamf.com/10.0.0/jamf-pro/administrator-guide/Viewing_the_History_for_a_Mobile_Device.html#src-16440111_id-.ViewingtheHistoryforaMobileDevicev10.0.0-VMHFAMD "Viewing the Management History for a Mobile Device")

[[top][]]
<a name="adv-migrate-server"></a>
### Migrate to Another Server



[[top][]]
<a name="how-to"></a>
## How To ...

<a name="adv-restart-tomcat-service"></a>
### Restart the Apache Tomcat Service

jamf-nation Knowledge Base click [here](https://www.jamf.com/jamf-nation/articles/117/starting-and-stopping-tomcat "jamf-nation Knowledge Base: Starting and Stopping Tomcat")

-   **macOS**

    `sudo lauchctl unload /Library/LaunchDaemons/com.jamfsoftware.tomcat.plist`  
    `sudo lauchctl load /Library/LaunchDaemons/com.jamfsoftware.tomcat.plist`

-   **Linux**

    *initd*  
    `sudo /etc/init.d/jamf.tomcat8 restart`

    *Systemd*  
    `sudo systemctl restart jamf.tomcat8` (httpd??? or apache???)

-   **Windows**

    `Net stop Tomecat8`  
    `Net start Tomcat8`

[comment]: <> "Widely used reference links beyond this point"

[top]: #toc                                     "Got to table of contents"
[macOS]: #macos-installed-files-and-folders     "macOS install locations"
[Linux]: #linux-installed-files-and-folders     "Linux install locations"
[Windows]: #windows-installed-files-and-folders "Windows install locations"
[Restart Tomcat]: #adv-restart-tomcat-service   "Restart the Apache Tomcat Service"

Restarting the Apache Tomcat Service](#adv-restart-tomcat-service)
