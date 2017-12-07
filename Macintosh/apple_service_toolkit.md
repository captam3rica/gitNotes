# Apple Service Toolkit (AST)

## Server Installation

- Download OS X server app or copy from another server with the same Mac OS version and configure NetBoot services.
  - **NOTE:** Make sure to install the Mac OS server app before installing AST Gateway, and any of its components, or it will not install all necessary dependancies.
- Use this search phrase in GSX to find the AST downloads: **Latest Apple Service Toolkit download links and documentation**
- Download and install the current AST & AST2 Diagnostic resources.
- Download and install all other AST & AST2 NetBoot resources that are not currently installed. These downloads cover older Mac models.
- Download and install ASD in AST
- Inside of the Mac OS server app, check the NetInstall service to be sure that the latest build and version numbers are installed.

## Upgrade Steps

- Make sure that Mac OS Server App has NetBoot services turned on.
- Log in to GSX to find the latest AST 1 and AST 2 image versions. (if upgrading, you only need the OS_Images that not already installed on your server)
  - Use this search phrase in GSX to find the AST downloads: **Latest Apple Service Toolkit download links and documentation**
- Download ASD in AST (Apple Service Diagnostic)
  - Make sure that current AST connections are disconnected
  - Disconnect the AST Gateway manager just to make sure everything installs correctly.
  - After the install completes, ASD EFI and ASD OS will be available in the AST menu on support computers. (If this option does not show up on supported computers, try restarting the Server and making sure that it has been properly configured.
- Install AST 2 (for compatible computers)
  - Configure the server with NetBoot services on
- Install AST 1 (for Older Mac models)
- Inside of the Mac OS server app, check the NetInstall service to be sure that the latest build and version numbers are installed.

![NetInstall Pain in Mac OS server](/Users/jwils156/repos/gitMyNotes/images/2017/ast_upgrade.png)
