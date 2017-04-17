# Packages & Programs Overview

- Objectives
  - Silent
  - Avoid manual interaction
  - Schedule
  - Targeted deployment


- Local Installation
  - Add/Modify files & reg keys
  - Using switches /q /qn /qb etc.


- Using app-v

- Packages & Programs (diff from applications)
  - applications are preferred  
  - Useful for simple commands and scripts
  - Packages are the actual files
  - Programs are the instructions for the Packages
  - Deployments are additional options such as per collection etc
  - Package ---> Program ---> Deployment ---> collection


- Site Server setup
  - Setup correct rolls for Distribution Points (DP)
    - Macs must use HTTPS from DP
    - Pre-staged content - Can put the packages or apps on a flash drive then send to a Management Point (MP) that has a slow WAN link. The admin can then manually add the package to the remote MP.
    - Almost anything can be a DP
    - PXE & multi cast can only be installed on server installs
  - Client settings
    - BITS - Background Intelligence Transfer Service - throttle the transfer of files.
    - Computer Agent - setup notification intervals etc.
    - PowerShell execution policy -
    - Software Center window title
    - Computer Restart settings


## Packages & Programs Demo

- 
