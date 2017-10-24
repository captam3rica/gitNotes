# jamfPro Server Notes

<a name="top"></a>
## Table of Contents

1.  [macOS](#macos)
1.  [Installed Files & Folders](#macos-installed_files_and_folders)
1.  [Requirements](#macos_requirements)
    1.  [JPS Server](#macos-jps-server_mac)
2.  [Linux](#linux)
    1.  [Installed Files & Folders](#linux-installed-files-and-folders)
    1.  [Requirements](#linux_requirements)
1.  [Windows](#windows)
    1.  [Installed Files & Folders](#windows-installed-files-and-folders)
    1.  [Requirements](#windows-requirements)
1.  [jamfPro Server Installation](#jps_installation)
    2.  [Upgrading the JSS](#upgrading_jps_server)
    3.  [Setting up the JPS Server](#setting_up_jps_server)
    1.  [Network Ports Used](#network_ports_used)
4.  [User Accounts & Groups](#user_accounts_and_groups)
    1.  [LDAP Integration](#ldap_integration)
1.  [Activation Code](#activation_code)
6.  [SMTP Server Integration](#smtp_integration)
7.  [Change Management](#change_management)
8.  [GSX Integration](#gsx_integration)
    1.  [GSX Integration Requirements](#gsx_integration_requiremetns)
        1.  [GSX Account Creation & Apple Cert](#gsx_account_creation_and_apple_cert)
    1.  [GSX Connection Configuration](#gsx_connection_configuration)
        9.  [Testing GSX Connection](#gsx_testing_connection)
    2.  [Renewing the Apple Certificate](#gsx_renew_apple_cert)
1.  [JPS Summary](#jps_summary)
2.  [Server Infrastructure](#server-infrastructure)
    1.  [About Distribution Points](#about-distribution-points)
    1.  [Differences Between DP Types](#dp-type-differences)

[[top](#top)]

<a name="macos"></a>
## macOS

### Installed Files and Folders <a name="installed_files_and_folders"></a>

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

[[top](#top)]

### Requirements <a name="macos_requirements"></a>

<a name="jps_server_mac"></a>
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

[[top](#top)]
<a name="linux"></a>
## Linux Requirements

#### JPS DP Installer for Linux

-   An Intel processor
-   2 GB of RAM
-   100 GB of disk space available
-   One of the following operating systems:
    -   Ubuntu 10.04 LTS Server
    -   Ubuntu 12.04 LTS Server
    -   Red Hat Enterprise Linux (RHEL) 6.4, 6.5, 6.6, or 7.0
    **Note**: To install a JDS instance on a Linux operating system that is running on a virtual machine, you need a virtualization platform that provides **SMBIOS** information.

[[top](#top)]
<a name="windows"></a>
## Windows Requirements

[[top](#top)]
<a name="jps_installation"></a>
## JPS Installation

### Required Software

-   From previous *Requirements* sections
    -   [macOS](#macos_requirements)
    -   [Linux](#linux_requirements)
    -   [Windows](#windows_requirements)

### Database Creation

1.  Open a **Terminal** to access the **MySQL** command line

    `mysql -u root -p`

2.  Enter the password for the *root* user
3.  Create the database

    `CREATE DATABASE [server_name];`

4.  Create a new *MySQL* user

    `CREATE USER '[username]'@'localhost' IDENTIFIED BY '[password]';`

5.  Grant access to the user so that it can access the database

    `GRANT ALL ON [server_name].* TO '[username]'@'localhost';`

### Run the JSS Installer

-   The **JSS Installer.mpkg** installs *Apache Tomcat* and the *JSS web app*

<a name="upgrading_jss"></a>
## Upgrading the JSS

1.  Backup the *JSS DB* using the *JSS Database Utility*
2.  Copy the latest *JSS Installer* to the macOS server.

[[top](#top)]
<a name="setting_up_jps_server"></a>
## Setting up the JPS Server

### Default Config Files

-   Update Inventory policy
-   Recurring check-in frequency
-   Mobile device inventory collection frequency

<a name="network_ports_used"></a>
### Network Ports Used

-   [JPS Knowledge Base](https://www.jamf.com/jamf-nation/articles/34/network-ports-used-by-jamf-pro)

[[top](#top)]
<a name="user_accounts_and_groups"></a>
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

<a name="ldap_integration"></a>
#### LDAP Integration

-   [Integration with LDAP Directory Services](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Integrating_with_LDAP_Directory_Services.html)

<a name="jps_user_group_creation"></a>
### JPS User Group Creation

`JPS Server Home Screen > Settings > System Settings > JPS User Accounts & Groups`

-   Click **New**
    -   Choose **Create Standard Group** or **Add LDAP Group**
-   Use the **Group** pane to configure basic group settings
    -   If you choose *Custom* from the **Privilege Set** menu, select the **Privileges** tab and select the privileges that you would like the group to have.
-   **Save**

<a name="jps_user_account_creation"></a>
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

<a name="jps_account_preferences"></a>
### Account Preferences

-   Log in the JPS server
-   Select the **disclosure triangle** next to your name. Then, click **Preferences**
-   Select the **Language & Region** tab to configure
-   Click **Search Preferences** and use the menu to configure
    -   By default, this is set to *Exact match* but can be changed to **Starts with** or **Contains**
-   **Save**


### Password Policy Configuration <a name="jps_password_policy_configuration"></a>

`JPS Home Page > Settings > System Settings > JPS User Accounts & Groups`

Applies to all standard *JPS* server users. However, the JPS server password  
policy does not apply to users added via **LDAP**

-   Click **Password Policy**
-   Click **Edit**
-   Select desired settings
-   **Save**

<a name="jps_unlock_user_accounts"></a>
### Unlocking a JPS Server User Account

This is done if an account is locked due to too many login attempts. If the  
user is allowed to unlock their own account, the user will be able to reset  
their own password. In this case, an email is sent to the address specified by  
the user in their preferences pane.

For an email to be sent to the user, an SMTP server must be configured - [SMTP Server Integration](#smtp_integration)

`JPS Server Home Page > Settings > JPS User Accounts & Groups`

-   Select the JPS user account with status **Disabled**
-   Click **Edit**
-   Select **Enable** from the *Access status* pop-up
-   **Save**

For more information about *Sites* and how to add them to the JPS Server, see [Sites](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Sites.html) on the Casper Suite Admin's Guide.

[[top](#top)]
<a name="activation_code"></a>
## Activation Code

Can change the *Activation Code* and the *Organization Name* here

`JPS Home Page > Settings > System Settings > Activation Code`

-   Click **Edit**
-   Enter new activation code
-   **Save**

[[top](#top)]
<a name="smtp_integration"></a>
## Integration with an SMTP Server

-   Send event notifications to JPS server users - see [Email Notifications](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Email_Notifications.html)
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

-   [Email Notifications](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Email_Notifications.html)
-   [User Initiated Enrollment Settings](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/User-Initiated_Enrollment_Settings.html)
-   [Performing Mass Actions for Computers](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing_Mass_Actions_for_Computers.html)
-   [Performing Mass Actions for Mobile Devices](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing_Mass_Actions_for_Mobile_Devices.html)

[[top](#top)]
<a name="change_management"></a>
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

[[top](#top)]
<a name="gsx_integration"></a>
## Integrating with GSX

**Note**: GSX may not always return complete purchasing information. Only the information found in GSX is returned.

<a name="gsx_integration_requiremetns"></a>
#### Requirements

-   GSX account with the **Manager** role, access to **Web Services**, and access to coverage/warranty information
-   An **Apple Certificate** (.pem or .p12)

<a name="gsx_account_creation_and_apple_cert"></a>
How to get a GSX account and an Apple cert - [Integrating with Apple's GSX](https://www.jamf.com/jamf-nation/articles/26/integrating-with-apple-s-global-service-exchange-gsx)

<a name="gsx_connection_configuration"></a>
### Configure GSX Connection Settings

`JPS Home Page > Settings > Global Management > GSX connection`

-   Edit
-   Select **Enable Connection to GSX**
    -   **Note**: Some settings may be configured already if JPS server was   used to generate a **CSR**
-   Enter username and account number for the **GSX Account**
-   Configure *Region* and *URL* as needed
-   Select **Certificate-based Authentication** and click **Upload**
-   Follow the onscreen prompts to upload **Apple Cert**

<a name="gsx_testing_connection"></a>
#### Testing the GSX Connection

`JPS Server Home Page > Settings > Global Management > GSX Connection`

-   Click **Test**.
-   Click, **Test** again

<a name="gsx_renew_apple_cert"></a>
#### Renewing the Apple Certificate

You may upload a new Apple Cert through the JPS server without losing connection to GSX.

`JPS Server Home Page > Settings > Global Management > GSX Connection`

-   Click **Edit**
-   Click **Renew**
-   Follow the onscreen prompts

#### Related Information

Take a look at the following JPS Admin guide articles for more information:

-   [Performing Mass Actions for Computers](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing_Mass_Actions_for_Computers.html)
-   [Performing Mass Actions for Mobile Devices](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Performing_Mass_Actions_for_Mobile_Devices.html)
-   [Viewing and Editing Inventory Info for a Mobile Device](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Viewing_and_Editing_Inventory_Information_for_a_Mobile_Device.html)
-   [Local Enrollment Using Recon](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Local_Enrollment_Using_Recon.html)
-   [Remote Enrollment Using Recon](http://docs.jamf.com/9.101.0/casper-suite/administrator-guide/Remote_Enrollment_Using_Recon.html)

[[top](#top)]
<a name="jps_summary"></a>
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

[[top](#top)]
<a name="server-infrastructure"></a>
## Server Infrastructure

<a name="about-distribution-points"></a>
### About Distribution Points (DS)
[top](#top)

#### File Types

-   Packages
-   Scripts
-   In-house apps
-   In-house eBooks

JPS supports **3** types of DPs

-   **File Share**
-   **Cloud**
-   **JDS Instance**

By default, the first **DP** add to the JPS is the **Master DP**. The master is seen as the authoritative source for all files during replication. The master can be changed at any time.

<a name="dp-type-differences"></a>
#### Differences Between DP Types
[top](#top)

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
