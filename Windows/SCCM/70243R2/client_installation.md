# Client Installation

- Manual Installation
  - ccmsetup.exe
  - UNC Path of the site code - this is where the client lives

        \\site point\client\ccmsetup.exe /mp:CM01 /logon smssitecode=auto fsp=CM01

  - Can see the setup program running "ccmsetup.exe" (may take some time to install)
  - Installation completion: ccmexec.exe and configuration manager properties in Control Panel(CP)
  - GUIDs can duplicate sometimes
  - TechNet: gg712298
    - Installation types

- Group Policy Client Installation
  - Get the files that we need
    - \\\cm server > bin > i386
    - Copy to local computer
    - Share the folder with read access
  - Policy
    - CM Client Setup
      - policy for software Installation under Client Settings
      - new package
        - navigate to file location using UNC Path
      - Deployment method: advanced
      - Templates
        - Tools > ConfigMangerADMTemplates
        - Can assign sites if needed. (if schema not extended)
  - gpupdate /force (get the new policies)

- Site Settings properties
  - Auto approve clients in trusted by domain

- Client Push Installation
  - Assets & Compliance > right click on device and install client (can also select collections or specific devices)
  - Client Push Installation Settings
    - Enable all site-wide client installations

- Windows FW & Port settings could be a reason that the site doesn't install
