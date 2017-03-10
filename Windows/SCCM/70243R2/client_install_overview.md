# Client Installation Overview

- Deployment Methods
  - Client push (dosnt always work correctly)
  - GPO (custom ADM files)
  - WSUS -
  - Software Distribution - usually deals with updates
  - OS Deployment and imaging
  - Manual/scripted installation (Local admin)
  - Startup script - not MS supported though
    - config manager client startup script
- Install files - ccmsetup.exe(manual method) and .msi (GPO method). client.msi(does the actual installation)
- gg699356 technet article
  - ccmsetup.exe /mp:SMSMP01 /logon SMSSITECODE=s01 FSP=SMSFSP01
- Very useful to extend AD schema

## Client Discovery

- cmd line setup parameters
- AD DS (extended AD schema)
- DNS SRV records (client must have site code)
- WINS 
