# Reference List

<a name="top"></a>

## TOC

1.  Administration

    1.	[Apple  ](#macintosh)
    1.	[Unix & GNU/Linux](#unix_linux)
    1. 	[Windows](#windows)

1. 	[MDM](#mdm)
1. 	[Virtualization](#virtualization)

1.  [Related to Scripting & Development](#scripting-and-languages)

    1.  [Atom](#atom)
    1.  [Markdown](#markdown)
    1.  [Python](#python)
    1.  [Bash](#bash)

---

<a name="macintosh"></a>

## Related to Apple Macintosh Support & Administration

-   HP Printer Driver FTP: ftp://ftp.hp.com/pub/softlib/software12/HP_Quick_Start/osx/Installations/Essentials//)
-   [Connet to a Wireless Network from CLI](http://osxdaily.com/2011/04/12/connect-wireless-network-command-line/)

### Tools

-   [DEPNotify](https://gitlab.com/Mactroll/DEPNotify): Simple tool to display
    what is happening during DEP enrollment on the Mac.

    -   [cannonball](http://cannonball.tombridge.com/2017/04/27/getting-started-with-installapplication-depnotify-and-simplemdm/)

-   [SplashBuddy](https://github.com/Shufflepuck/SplashBuddy)

-   [InstallApplications](https://github.com/erikng/installapplications):
    dynamically download packages for use with `InstallApplication`. Greatly
    reduces initial packages sizes. 

-   [ManagedMac](http://dayglojesus.github.io/managedmac/): puppet plugin for
    managing mac.

-   [Packages](https://www.macupdate.com/app/mac/34613/packages/download):
    Package creator

-   [Suspicious
    Package](http://www.mothersruin.com/software/SuspiciousPackage/get.html):
    look inside of packages. 

-   [Payload-Free-Package-Creator](https://github.com/rtrouton/Payload-Free-Package-Creator): when
    you want to just dumb a script somewhere.

-   [Dock Master](https://github.com/Error-freeIT/Dock-Master)

-   [DeployStudio](https://deploystudio.wikispaces.com "DeployStudio Wiki")

-   [mas](https://github.com/mas-cli/mas): App Store from the CLI    

-   [NoMAD](https://nomad.menu/downloads/ "No More Active Directory"): Active
    Directory broker client. OpenSource alt to Apple's Enterprise Connect
    service

-   [AutoDMG](https://github.com/MagerValp/AutoDMG)

-   [precache](https://github.com/krypted/precache): Pull updates down top the
    Apple macOS Server Caching service.

-   MCXToProfile: convert `.plist` configuration files to `.mobileconfig` files for
    deployment through **Profile Manager**

-   **Automator**

    -   [ConfigAutomation](https://configautomation.com/attach-workflow.html)

-   [Vendor KEXT
    Info](https://docs.google.com/spreadsheets/d/1IWrbE8xiau4rU2mtXYji9vSPWDqb56luh0OhD5XS0AM/edit#gid=0)


### Documentation

- [Port Specifications for Apple Services](https://support.apple.com/en-us/HT202944)
- [Apple Document Style Guide](https://help.apple.com/applestyleguide/#/apsg3acde405)
- [Apple Open Source Documentation](https://opensource.apple.com/)
- [Sudoers
    Modification](https://derflounder.wordpress.com/2016/07/11/editing-etcsudoers-to-manage-sudo-rights-for-users-and-groups/)
- [keyboard shortcuts](http://support.apple.com/kb/HT1343 )
- [Apple MDM
    Documentation](https://developer.apple.com/library/content/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/3-MDM_Protocol/MDM_Protocol.html#//apple_ref/doc/uid/TP40017387-CH3-SW2)
- [Configuration Profile Reference](https://developer.apple.com/business/documentation/Configuration-Profile-Reference.pdf)
- [Apple Configurator 2](http://help.apple.com/configurator/mac/2.0/)
- [Apple Profile
    Manager](http://help.apple.com/profilemanager/mac/5.4/#/apd5BD57F16-A2BF-43B9-AB4B-24948FB52C1E)
- [Apple Developer - APFS](https://developer.apple.com/library/content/documentation/FileManagement/Conceptual/APFS_Guide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40016999-CH1-DontLinkElementID_19)
- [macOS Builds](https://support.apple.com/en-us/HT201260)
- [Apple Video Adapters and Cables](https://support.apple.com/en-us/HT201853 "About Apple Video Adapters and Cables")
- [Mac Startup Cmd Options](https://support.apple.com/en-us/HT201255)
- [Apple software Restore (ASR)](https://en.wikipedia.org/wiki/Apple_Software_Restore)
- PPPC
	- https://derflounder.wordpress.com/2018/08/31/creating-privacy-preferences-policy-control-profiles-for-macos/
- [802.1x](https://www.esecurityplanet.com/views/article.php/3899996/How-to-Use-Enterprise-WiFi-Encryption-and-8021X-in-Mac-OS-X.htm)
- [Disabled Accounts](https://www.jamf.com/jamf-nation/discussions/18243/password-policy-profile-disables-user-account)

### Support

- [ABM Support Numbers](https://help.apple.com/businessmanager/?lang=en-us#/apd098f3d709)


\[[top](#top)]

<a name="unix_linux"></a>

## Unix & GNU/Linux

-   [Sane scanner](https://wiki.archlinux.org/index.php/SANE)

-   Linux Journey - <https://linuxjourney.com/lesson/etc-group-file>

-   netboot.xyz

-   Banking with a live cd: <http://krebsonsecurity.com/2012/07/banking-on-a-live-cd/>

-   SSH Tricks: <http://www.linuxjournal.com/article/6602>

-   Rsync command examples - <http://www.thegeekstuff.com/2010/09/rsync-command-examples/>

-   POSIX - <https://en.wikipedia.org/wiki/POSIX>

-   Security Enhanced Linux: <http://selinuxproject.org/page/Main_Page>

-   Cool old terminal - old looking terminal for linux: <http://linuxg.net/how-to-install-cool-old-term-0-9-on-ubuntu-14-04-debian-jessie>

\[[top](#top)]


<a name="mdm"></a>

## MDM

- [MacOS WiFi Login Window Profile]( https://ntsystems.it/post/joining-wifi-before-login-on-mac-os-x-108)

### Jamf

- [API Support](http://developer.jamf.com/apis/jamf-pro-api/index)
- [Documentation](docs.jamf.com)
- [Jamf-Nation](jamf.com/jamf-nation)
- [Service Status](status.jamf.com)
- [Ports Used](https://www.jamf.com/jamf-nation/articles/34/network-ports-used-by-jamf-pro)
- [JamfCloud IP Addresses](https://www.jamf.com/jamf-nation/articles/409/permitting-inbound-outbound-traffic-with-jamf-cloud)
- Okta SSO Integration
	- https://www.jamf.com/jamf-nation/articles/435/configuring-single-sign-on-with-okta
	- https://www.jamf.com/jamf-nation/discussions/23156/integrating-jss-with-okta-sso
- AzureAD LDAPS
	- https://www.jamf.com/jamf-nation/discussions/25876/a-guide-to-jss-azure-ad-integration-ldap-+-sso


### Workspace ONE

- [AirWatch Leaning Path](https://mylearn.vmware.com/mgrReg/plan.cfm?plan=47955&ui=www_edu)

- [MacOS Profile Guide](https://my.air-watch.com/help/9.1/en/Content/Platform_Guides/macOS/C/Profiles_Overview.htm?TocPath=PROFILES|macOS%C2%A0Device%20Profiles|_____0)

- [Documentation](https://resources.air-watch.com/documentation?sort=newest)

- [Munki Integration](https://support.air-watch.com/articles/360000721788)
    - [Munki teardown](http://www.aarondavidpolley.com/vmware-airwatch-munki-teardown/)

- [AW REST APIs]()
	- [Get devices from AW](https://macadminsdoc.readthedocs.io/en/master/MDM/AirWatch/AirWatch-API.html)
	- your_console.com/api/help
	- Reserved REST Chars
		- Reserved: & ( ) {} [] " <>
		- Allowed: ! @ $ % ^ *  - + | \ ' ?

- [MacOS](https://my.air-watch.com/help/9.1/en/Content/Platform_Guides/macOS/C/Profiles_Overview.htm?TocPath=PROFILES|macOS%C2%A0Device%20Profiles|_____0)

- [vSphere SDK - Python](https://github.com/vmware/vsphere-automation-sdk-python/blob/master/README.md)

- [VMware Code](https://code.vmware.com/home)

#### Tools

- [Workspace ONE Validation Analyzer](https://docs.vmware.com/en/VMware-Workspace-ONE-UEM/9.4/vmware-airwatch-guides-94/GUID-AW94-ValidationTool.html)


### MS Azure

- [REST API](https://docs.microsoft.com/en-us/rest/api/azure/)


### Mobile Iron

- 

\[[top](#top)]
<a name="scripting-and-languages"></a>

## Virtualization

-	[VDI Design Guide](https://vhojan.nl/category/vdi-design-guide/) | Johan van Amersfoort
- 	[Desktop as a Service: Everything you need to know about DaaS and hosted VDI](https://www.amazon.com/gp/product/0985217421/ref=ox_sc_act_title_2?smid=ATVPDKIKX0DER&psc=1) | Brian Madden
-	[VMware vSphere 6.5 Hosted Resources Deep Dive](https://www.amazon.com/gp/product/1540873064/ref=ox_sc_act_title_3?smid=ATVPDKIKX0DER&psc=1) | Frank Denneman


### VMware Horizon

- Carl Stalhood - [www.carlstalhood.com/](http://www.carlstalhood.com/)
- 10,000 VDI - https://www.vmware.com/content/dam/digitalmarketing/vmware/en/pdf/techpaper/vmware-horizon-view-atlantis-ilio-diskless-vdi-10000-reference-implementation-white-paper.pdf
- Software - https://my.vmware.com/web/vmware/details?downloadGroup=VIEW-770-STD&productId=828&rPId=29905
- Linked clone worksheet - https://docs.vmware.com/en/VMware-Horizon-7/7.7/horizon-console-administration/GUID-F336E9DA-EC69-440A-A1B8-28E4FDC1784B.html
- 50 Articles to fix everything - https://blogs.vmware.com/kb/2015/03/50-kbs-fix-everything-horizon-view.html


#### View Composer Database

- Prepare View Composer DB - https://docs.vmware.com/en/VMware-Horizon-7/7.0/com.vmware.horizon-view.installation.doc/GUID-4CF63F93-8AEC-4840-9EEF-2D60F3E6C6D1.html
- Event DB Sizing - http://myvirtualcloud.net/vmware-view-database-sizing/

## Related to Scripting & Development

-   [HTTPS Status Code Explainations](https://httpstatuses.com/)
-   [shields.io](https://shields.io)


### Git

- [GitHub Repo API](https://developer.github.com/v3/repos/#create)


<a name="python"></a>

### Python

-	Install `pip` python package manager MacOS - **P**ip **I**nstalls **P**ackages
	- `sudo easy_install pip`
-   For **pycodestyle** - PEP8 linter for _Atom_
    - `pip (or pip2) install pycodestyle && apm install pycodestyle`
- [Python for InfoSec](http://strategicsec.com/python-for-infosec-pros-2015/)
- [Python Naming Conventions](http://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)
- [Built-in Exceptions](https://docs.python.org/3/library/exceptions.html#os-exceptions)
- [Requests Module](http://docs.python-requests.org/en/master/user/quickstart/#more-complicated-post-requests) - API Manipulation - `sudo pip install requests`
	- [HTTP Status codes](https://github.com/requests/requests/blob/master/requests/status_codes.py)	
- [python ldap module](https://www.python-ldap.org/en/latest/bytes_mode.html#porting-recommendations) - `pip install python-ldap`
- [Send emails](https://realpython.com/python-send-email/)
- [RealPython.com](https://realpython.com)

<a name="bash"></a>

### Bash

-   [bashoneliners.com](http://www.bashoneliners.com/oneliners/oneliner/popular/)
-   Shell Variables - <https://www.gnu.org/software/bash/manual/bash.html#Shell-Variables>
-   User input with a while loop - <http://alvinalexander.com/linux-unix/shell-script-how-prompt-read-user-input-bash>
-   8 examples of Bash if statements - <http://bencane.com/2014/01/27/8-examples-of-bash-if-statements-to-get-you-started/>
-   07.18.2017 - [25 Simple Find commands](http://www.binarytides.com/linux-find-command-examples/)
-   07.15.2017 - [The /sbin Directory](http://www.linfo.org/sbin.html)
-   **08.01.2016** - [Working with tar](http://www.tecmint.com/18-tar-command-examples-in-linux/)

\[[top](#top)]


### Vim Customization

-   [vim wiki](http://vim.wikia.com/wiki)
-   [NerdTree Doc](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt)

<a name="atom"></a>

### Atom IDE Customization ...

```css
// Selection color - added by captam3rica
atom-text-editor::shadow .selection .region {
    background-color: #EA4760;
}

// To style other content in the text editor's shadow DOM, use the ::shadow expression
atom-text-editor::shadow .cursor {
  border-color: #EA4760;
}

// Minimap cursor color style
.minimap .cursor-line {
    background: #EA4760;
}

// add or import these into your Atom styles.less

/******************  VIM MODE STATUS BAR ****************************************/

// green
@normal-bg: rgb(105, 238, 103);
// blue
@insert-bg: rgb(7, 193, 242);
// yellowish
@visual-bg: rgb(255, 206, 98);


// change the current cursor-line background color
// based on vim mode
atom-text-editor.is-focused.editor {
  .cursor-line {
    // background: rgba(64, 64, 37, 5);
    background: fadeout(@normal-bg, 80%);
  }
  &.insert-mode {
    .cursor-line {
      background: fadeout(@insert-bg, 90%);
    }
  }
}


// vim mode in the status bar at the bottom
// make it nice and big so you can see it out of the corner of your eye
// without thinking about it.
.status-bar-vim-mode-normal,
.status-bar-vim-mode-insert,
.status-bar-vim-mode-visual {
  font-weight: bold;
  text-align: center;
  font-size: 1.5em;
  width: 18rem;
  text-transform: uppercase;
}


.status-bar-vim-mode-normal {
  background: @normal-bg;
  color: rgb(4, 111, 11);
}

.status-bar-vim-mode-insert {
  background: @insert-bg;
  color: white;
}

.status-bar-vim-mode-visual {
  background: @visual-bg;
  color: rgb(168, 117, 5);
}

// change cursor color in normal mode
atom-text-editor.vim-mode.normal-mode.is-focused.editor {
  .cursor {
    background-color: @normal-bg;
  }
}

// visual mode and selected text
atom-text-editor.editor .selection .region {
  background-color: fadeout(@visual-bg, 75%);
}
```

\[[top](#top)]
<a name="scripting-and-languages"></a>

<a name="markdown"></a>

### Markdown

-   [CommmonMark](http://commonmark.org/)

    -   [CommmonMark Spec](http://spec.commonmark.org/)

-   [Brett Terpstra: Write Better Markdown](http://brettterpstra.com/2015/08/24/write-better-markdown/)

-   [vim wiki](http://vim.wikia.com/wiki)
-   [vim-markdownfmt](https://github.com/moorereason/vim-markdownfmt)

-   Build a table of contents

    ```markdown
    # Markdown syntax

      # Table of contents
      1. [Introduction](#introduction)
      2. [Some paragraph](#paragraph1)
      3. [Sub paragraph](#subparagraph1)
      4. [Another paragraph](#paragraph2)

      ## This is the introduction <a name="introduction"></a>
      Some introduction text, formatted in heading 2 style

      ## Some paragraph <a name="paragraph1"></a>
      The first paragraph text

      ### Sub paragraph <a name="subparagraph1"></a>
      This is a sub paragraph, formatted in heading 3 style

      <a name="paragraph2"></a>
      ## Another paragraph
      The second paragraph text
    ```

\[[top](#top)]

### RegEx

-   [RegEx - Grymoire](http://www.grymoire.com/Unix/Regular.html "Learn about regex")

\[[top](#top)]

### PowerShell

-   [Memory and Handle Quotas in the WMI Provider Ser](https://blogs.technet.microsoft.com/askperf/2008/09/16/memory-and-handle-quotas-in-the-wmi-provider-service/)
-   Bypass Execution Policies - <https://blog.netspi.com/15-ways-to-bypass-the-powershell-execution-policy/>

\[[top](#top)]


### sed

-   [Learn Sed](http://www.grymoire.com/Unix/Sed.html)

## Software

### Web Browser Settings

-   Chrome, Chromium, and Vivaldi Autofill Settings: `chrome://settings/search#autofill`
-   Opera flag settings: `opera://flags/`

    -   Smooth Scrolling: Disabled
    -   Experimental QUIC (Similar to TCP but over UDP): Enabled

[[top](#top)]


## Encryption & Cryptography

-   [Hashing vs Encryption](http://www.darkreading.com/safely-storing-user-passwords-hashing-vs-encrypting/a/d-id/1269374)

[[top](#top)]

<a name="windows"></a>


## Related to Windows Administration

-   List of WMIC CSProduct Get Name Results - <http://faqshop.com/misc/list-of-wmic-csproduct-get-name-results/>

-   [Troubleshooting Slow Logons via PowerShell](https://www.citrix.com/blogs/2015/08/05/troubleshooting-slow-logons-via-powershell/)

-   [Logon GPO Analysis via PowerShell](https://www.controlup.com/blog/logon-gpo-analysis-via-powershell/)

\[[top](#top)]

### SCCM Administration

-   [SCCM Queries with PowerShell](http://blog.ctglobalservices.com/powershell/kaj/working-with-queries-in-configmgr-with-powershell/)

-   [WMI SCCM Queries](https://www.andersrodland.com/ultimate-sccm-querie-collection-list/)

-   Convert from BIOS to UEFI Using SCCM - <https://www.systemcenterdudes.com/sccm-bios-uefi-conversion-task-sequence>

    -   Another Article regarding Bios to UEFI conversion - <https://docs.microsoft.com/en-us/sccm/osd/deploy-use/task-sequence-steps-to-manage-bios-to-uefi-conversion>

-   Deploy Windows from Captured Media -  <https://blogs.technet.microsoft.com/configurationmgr/2010/04/12/how-to-set-up-a-task-sequence-to-deploy-windows-7-images-captured-via-an-sccm-2007-capture-cd/>

-   Driver management - <https://technet.microsoft.com/en-us/library/hh301101.aspx>

\[[top](#top)]

