# Inventory & Report

## Setup

- SQL/TSQL
- WQL - this is the primary language used
- Reporting Services Point roll must be enabled on the Primary Site
- Asset Intelligence synchronization point - will sync with Microsoft to pull a software catalogue
  - Can hurt CPU cycles
- To determine when a specific user has logged onto a computer system, enable the "Audit Logon Events" policy in Group Policy.

## Setup & Reporting Demo

- MIF files are optional
- Software inventory
  - Can search for specific file extensions
  - File collection only for specific things
- Reporting Service Configuration Manager
  - Input the database that you want to use
  - Service account of local system
  - Name of Web Server URL
- Database
- Report Manager URL - can browse to a predefined url for reports
  - Also available within the console
  - TechNet article: gg712698
- Make sure to set proper security settings for reports
- Can setup files to go to file servers or email to you
- Web reporting
  - right click Manage
    - Processing options
      - can setup amount of time to cache a specific report
    - SnapShot options
      - can add reports to a history (specific schedule or shared schedule)
    - Security 
