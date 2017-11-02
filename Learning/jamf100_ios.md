# jamf 100 Study session

[Start Here](http://docs.jamf.com/education-services/jamf-100-course/1.1/Lesson_1__Course_Introduction.html)

## iOS

### Services from Apple

- APNs
- VPP
- GSX
- DEP (ADP)
- Apple School Manager

### JSS Intro

- Java, Apache Tomcat, MySQL
- Dashboard - start here after login
- Computers, Mobile Devices, Users
- JSS communicates with deices through APNs
- Located in the cloud, or on prem (macOS, Ubuntu or RHEL Linux, or Win)

### JSS User Accounts

Settings > System Settings > JSS Users Accounts & Groups

- CRUD
- Admin, Enrollment Only, Auditor (read-only), custom

### DEP Enrollment  

Mobile Devices > PreStage Enrollments

**Steps to Enable DEP for iOS**
  - Associate JSS with DEP token provided by Apple
  - Upon connecting to a network during iOS setup, the device will check in with Apple
  - The PreStage Enrollment configured in the JSS may provide additional settings to mobile devices upon enrollment
  - Additional config and deployment tasks begin as soon as device is a part of JSS

**Some PreStage Enrollment Config Options**
  - Automate enrollment during iOS enrollment
  - Can require LDAP auth
  - Can prevent removal of MDM product and configs
  - Suppress portions of iOS setup
  - Supervise devices, and enable additional management services from the JSS
  - Educational institutions can enable shared iPads
  - Naming conventions can be automated and enforced

**Questions**

1.  What are some reasons for DEP
  - Auto enrollment with Apple and MDM
  - Zero touch
  - Management
  - See devices in the environment
  - Skip certain portions of the iOS setup process
  - Stop removal of MDM agent
2. Besides Auto enrollment, what else is available?
  - Send profiles, install apps, send remote commands.

**Links**

Casper Admin Guide

- [About DEP](http://docs.jamf.com/casper-suite/administrator-guide/About_Mobile_Device_Enrollment.html)  
- [Integrating with DEP](http://docs.jamf.com/casper-suite/administrator-guide/Integrating_with_the_Device_Enrollment_Program.html)  
- [Mobile Device PreStage Enrollments](http://docs.jamf.com/casper-suite/administrator-guide/Mobile_Device_PreStage_Enrollments.html)

From Apple

- [DEP FAQ](https://support.apple.com/HT204142)  
- [Apple Configurator 2 Help](http://help.apple.com/configurator/mac/2.3/#/)

### User-Initiated Enrollment

Settings > Global Management > User-Initiated Enrollment > Platforms   
Mobile Devices > Enrollment Invitations

**Why?**

- byod
- Devices purchased or donated by 3rd party

**Process**

- sip.local:8443/enroll
  - must be a user that the JSS knows about and the user must have the proper permissions to enroll
- Install CA cert
- Install MDM profile
- Enrollment complete
- Commands are sent from JSS to Device

**How to get the link to users**

- Manually
- Enrollemnt Notification via **TXT** or **email**

**Links**

- [User-Initiated Enrollemnt Settings](http://docs.jamf.com/casper-suite/administrator-guide/User-Initiated_Enrollment_Settings.html)

### Inventory Search

Mobile Devices > Search Inventory  
Settings > Mobile Device Management > Inventory Display

**How**

- Exact strings, using wild cards
- Search behavior can be changed under **Account Preferences** for each user
- Inventory Display under Mobile device Management (per JSS user)
  - add more columns to the inventory output.
- Can export search results (csv, xml, or excel)

### View & Edit Inventory Information

Mobile Device > Search Inventory

**Categories Under Device**

- General
- Hardware
- User and Location
- Purchasing
- Security
- Apps
- Managed eBooks
- Network

**Links**

- [Viewing & Editing Inventory Info for a Mobile Device](http://docs.jamf.com/casper-suite/administrator-guide/Viewing_and_Editing_Inventory_Information_for_a_Mobile_Device.html)

### Scope

Mobile Devices > Configuration Profiles

- Granular control over tasks and config profiles
- Decide who gets what
- **Targets > Limitations > Exclusions**
- Similar to creating groups or containers or manifests
- Scope can be based on ...
  - individual mobile devices, mobile device groups, departments or buildings
- **Targets**: are the initial pool of devices based on all mobile devices, specific mobile devices, mobile device groups, buildings, or depts
- **Limitations**: Reducing the initial target fo mobile devices based on specific users, network segments, or iBeacons
- **Exclusions**: Omit specific targeted devices, mobile device groups, buildings, departments, users, network segments, or iBeacons from the scope.

### Groups

Mobile Devices > Static Mobile Devices Groups

- **JSS Group** - collection of devices for reporting and scoping
  - Only **managed devices** are eligible for groups
  - Static and Smart groups
  - Static for people or devices that you would not want to get certain configs
  - Static groups are fixed and must be configured manually.

### Configuration Profiles

Mobile Devices > Configuration Profiles  
Mobile Devices > Configuration Profiles > Configuration Profile Name > Logs  
Mobile Devices > Search Inventory > Mobile Device Name > History > Management History  

- xml or .mobileconfig files
  - pushed through MDM and APNs
- There are many options available when creating configuration profiles
- Can hit later but it will eventually force the install (60 minutes by default)
- ie - passwords, wifi, Restrictions ...

**Troubleshooting**

- Ensure proper configuration
- Look at logs for the configuration
- Locate management history for the specific mobile device

**Things to Avoid**

- Avoid bundling multiple configuration profiles payloads that are unrelated to each other.
  - ie - one for restrictions and a separate one for wifi and passcodes
- Create unique configuration profiles to achieve separate goals
  - reduces scope complexity and makes troubleshooting easier

**Links**

- [Mobile Device Configuration Profiles](http://docs.jamf.com/casper-suite/administrator-guide/Mobile_Device_Configuration_Profiles.html)
- [Payload Capabilities for Mobile Device Configuration Profiles](http://docs.jamf.com/casper-suite/administrator-guide/Payload_Capabilities_for_Mobile_Device_Configuration_Profiles.html)
- [Viewing Management Information for a Mobile Device](http://docs.jamf.com/casper-suite/administrator-guide/Viewing_Management_Information_for_a_Mobile_Device.html)

- [Configuration Profiles Reference](https://www.jamf.com/jamf-nation/articles/217/configuration-profiles-reference)
- [Optimizing Configuration Profile Payload Management](https://www.jamf.com/jamf-nation/articles/378/optimizing-configuration-profile-payload-management)

- Profile Manager Help

### Application Deployments

- Apps
  - Self Service Mobile from jamf

### Remote Commands

Mobile Devices > Search Inventory > Mobile Device Name > Management > Management Commands
Mobile Devices > Search Inventory > Search > Action > Send Remote Commands

- Remotely push tasks
- Individually or to groups
- Depends on ownership type, device type, iOS version, and supervision status.
