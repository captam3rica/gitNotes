# Configuration Manager Installation

## Demo Environment Overview

- DCNUGGET01 - Domain controller
- WIN81-01
- CM01 (Configuration Manager)
  - Site Server
  - SQL Server

### Configuration Manager

#### Prereqs

- Join the server to the Domain
- Extend AD schemas (File Manager > SCCM-EP-R2 > SMSSETUP > BIN > X64)
- Run the prereq program (File Manager > SCCM-EP-R2 > SMSSETUP > BIN > X64)
  - Do this after setting up the evironment ()
- Configure settings on DC
- SQL Server Setup
- 1433 & 4022 Need to be allowed through the firewall if SQL and CM are on separate servers

#### Configuration

- Extend the AD schema
  - File Manager > SCCM-EP-R2 > SMSSETUP > BIN > X64 > extadsch (application)
    - Right-click and run as admin
    - Or Log in the the server with admin creds
    - Even though we are not on the DC, our server will reachout to the DC to make the changes.
      - ExtADSch log file to view changes (on root of C:\\Local Disk)
  - Schema admin group
  - [Whether of not to extend AD Schema](https://technet.microsoft.com/en-us/library/gg712272.aspx)

- Domain Controller
  - launch adsiedit.msc
    - Add a system container
      - Right-click CN=System > New > Object
    - Create Object
      - Container
      - Name: System Management (case sensitive)
    - Right-click the new container > Properties > Security tab
      - Add the configuration manager computer (CM01$) to the list of users and groups
      - Give the computer "Full control"
    - If you have multiple configuration Manager sites, the best thing to do would be to add them to a security group then add that croup the the list of allowed users in the container

- SQL Server on CM
  - [SQL Requirements for SCCM 2012 R2](https://technet.microsoft.com/en-us/library/dn281933.aspx)
  - Right-click the server in SQL Management studio > Properties
    - Under General, Make sure the "Server Collation" is SQL Latin 1 General CP1 CI AS (default)
    - Under memory: change min to something around 4GB and max to 4GB as well.
  - Created a user called SMSAdmin for the SQL server to use
    - Double-click > Server Roles > make sure that "sysadmin & public" is checked.
  - In Computer Management > Services > SQL Server (MSSQLSERVER) > Log On > local system account or search for a domain account. Both would work.
  - Need to be allowed through the firewall if SQL and CM are on separate servers 1433 & 4022

- Role Creation
  - Refer to the lab document from CBT Nuggets

- Download Windows access and deployment kit (Windows ADK)

- Installation of the Server
  - [Planning for hardware configurations](technet.microsoft.com/en-us/library/hh846235.aspx)
