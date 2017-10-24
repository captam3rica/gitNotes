# Mac@IBM - Under the Hood

[Video Link](https://www.youtube.com/watch?v=E9FUBo17CAs&t=924s)

- Using Nagios for monitoring and producing charts and graphs
- [tipboard](https://allegro.tech/tipboard/) - for beautifying the charts
  - OpenSource - [GitHub](https://github.com/allegro/tipboard)
  - Self-hosted
- **Enrollment at IBM**

                                    ----------------
                                    |  Enrollments |
                                    ----------------
                                            |                  -------------------
      ---------------  Excluded         -----------            |  MAIN           |
      Smart Group   | -------------->   | Install |  ------>   | - Packages      |
                    |  Included         -----------            | - Scripts       |
      App Installed | -------------->   -------------          | - Custom Trigger|
      ---------------    ----------     | Reinstall | ----->   | - Scoped to All |
                    '+'  | SG     |     -------------          |                 |
                         | App Vs |      ----------            |                 |
                          --------- -->  | Update | ------->   |                 |
                                         ----------            -------------------

  - 4 Packages
    - Main
    - Install
    - Re-installation
    - Update
  - IBM does not use **AD**
    - They let the JSS handle the user management
    - The connect the JSS to LDAP for auth
  - mac@ibmengineering
  - **Local admins** on computers
    - They give their employees local admin
    - They monitor what is happening
    - They are working on "*Self-healing*" options
    - There are a handful of apps that the IBM security team has asked be Blacklisted.
  - **Profiles**???
    - Very basic
      - Screensaver
      - Password
      - Firewall
      - Some security requirements
    - Maybe 5
    - Everything else is left to the user
  - **Data migration**
    - In house
    - Scripts to get files in place on the Windows side so that Migration Assistant can pick them up.
    - Post-script to check that the files have been moved to the Mac
  - IBM lists issues with the Mac Platform and how they are trying to solve those issues.
    - They are very upfront with their end users
  - **AV**?
    - Use to use *SEP*
    - They no long use 3rd Party *AV*
    - **XProtect and Gatekeeper**
      - *XProtect* is technically a feature builtin to *File Quarantine*
      - `/System/Library/Core Services/CoreTypes.bundle/Contents/Resources/XProtect.plist`
  - IBM Enrollment Portal - https://macatibm.podc.sl.edst.ibm.com/enroll/  
    - Collaborated on the design and creation of the SSP
    - Native *Swift* app
