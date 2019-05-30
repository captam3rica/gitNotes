# Reference List

<a name="top"></a>

## TOC

1. Administration

	1. [Apple  ](#macintosh)
	2. [Unix & GNU/Linux](#unix_linux)
	3. [Windows](#windows)

1. [MDM](#mdm)
	
	1. [Apple](#apple_apns)
	1. [Jamf](#jamf)
	2. [WorkspaceONE](#wso)
	3. [MSFT Azure](#msft_azure)
	3. [Mobile Iron](#MI)

1. [Virtualization](#virtualization)

1. [Related to Scripting & Development](#scripting-and-languages)

    1. [Atom](#atom)
    1. [Markdown](#markdown)
    1. [Python](#python)
    1. [Bash](#bash)

---

<a name="macintosh"></a>

## Related to Apple Macintosh Support & Administration

- [HP Printer Driver FTP](ftp://ftp.hp.com/pub/softlib/software12/HP_Quick_Start/osx/Installations/Essentials//)


### Tools

- [Google Santa - Blacklisting](https://github.com/google/santa)
- [DEPNotify](https://gitlab.com/Mactroll/DEPNotify): Simple tool to display
    what is happening during DEP enrollment on the Mac.
    - [cannonball](http://cannonball.tombridge.com/2017/04/27/getting-started-with-installapplication-depnotify-and-simplemdm/)
- [SplashBuddy](https://github.com/Shufflepuck/SplashBuddy)
- [InstallApplications](https://github.com/erikng/installapplications):
    dynamically download packages for use with `InstallApplication`. Greatly
    reduces initial packages sizes. 
- [ManagedMac](http://dayglojesus.github.io/managedmac/): puppet plugin for
    managing mac.
- [Packages](https://www.macupdate.com/app/mac/34613/packages/download):
    Package creator
- [Suspicious
    Package](http://www.mothersruin.com/software/SuspiciousPackage/get.html):
    look inside of packages. 
- [Payload-Free-Package-Creator](https://github.com/rtrouton/Payload-Free-Package-Creator): when
    you want to just dumb a script somewhere.
- [Dock Master](https://github.com/Error-freeIT/Dock-Master)
- [DeployStudio](https://deploystudio.wikispaces.com "DeployStudio Wiki")
- [mas](https://github.com/mas-cli/mas): App Store from the CLI    
- [NoMAD](https://nomad.menu/downloads/ "No More Active Directory"): Active
    Directory broker client. OpenSource alt to Apple's Enterprise Connect
    service
- [AutoDMG](https://github.com/MagerValp/AutoDMG)
- [precache](https://github.com/krypted/precache): Pull updates down top the
    Apple macOS Server Caching service.
- MCXToProfile: convert `.plist` configuration files to `.mobileconfig` files for
    deployment through **Profile Manager**
- **Automator**
    - [ConfigAutomation](https://configautomation.com/attach-workflow.html)
    
    
### Commands

- Force unbind from AD domain

	`sudo dsconfigad -force -remove -u johndoe -p nopasswordhere`
	
- Generate a random UUID

	`uuidgen | tr "[:upper:]" "[:lower:]”`
	
- Sign a package with a developer ID installer cert

	`productsign --sign “Developer ID Installer: Your Developer Name (1A2B3C4D5E)” ~/Desktop/example.pkg ~/Desktop/signed-example.pkg`
	
- Remove GateKeeper restrictions

	`sudo spctl --master-disable`
	
- Clear passcode profile settings
	
	`sudo pwpolicy -clearallaccountpolicies`


### Documentation

- [Apple Document Style Guide](https://help.apple.com/applestyleguide/#/apsg3acde405)
- [Apple Open Source Documentation](https://opensource.apple.com/)
- [keyboard shortcuts](http://support.apple.com/kb/HT1343 )
- APNS
	- [Apple Developer - APFS](https://developer.apple.com/library/content/documentation/FileManagement/Conceptual/APFS_Guide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40016999-CH1-DontLinkElementID_19)
	- [Apple Developer - APNS - API](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CommunicatingwithAPNs.html#//apple_ref/doc/uid/TP40008194-CH11-SW1)
	- [Apple Developer - APNS - Overview](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/APNSOverview.html#//apple_ref/doc/uid/TP40008194-CH8-SW1)
- [macOS Builds](https://support.apple.com/en-us/HT201260)
- [Mac Startup Cmd Options](https://support.apple.com/en-us/HT201255)
- [Apple software Restore (ASR)](https://en.wikipedia.org/wiki/Apple_Software_Restore)
- [Disabled Accounts](https://www.jamf.com/jamf-nation/discussions/18243/password-policy-profile-disables-user-account)
- [Setting Printer Options Via CLI](http://www.brunerd.com/blog/2012/03/13/getting-and-setting-ppd-options-via-command-line-for-use-with-lpadmin-in-os-x/)


#### MDM Protocol Related

- [Apple MDM Documentation](https://developer.apple.com/library/content/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/3-MDM_Protocol/MDM_Protocol.html#//apple_ref/doc/uid/TP40017387-CH3-SW2)
- [Configuration Profile Reference](https://developer.apple.com/business/documentation/Configuration-Profile-Reference.pdf)
- [Apple Profile Manager](http://help.apple.com/profilemanager/mac/5.4/#/apd5BD57F16-A2BF-43B9-AB4B-24948FB52C1E)
- [Apple Configurator 2](http://help.apple.com/configurator/mac/2.0/)
- [MacOS Deployment Reference](https://help.apple.com/deployment/macos/#/ior5d40635d0)


#### Networking & Wi-Fi

- [Connet to a Wireless Network from CLI](http://osxdaily.com/2011/04/12/connect-wireless-network-command-line/)
- [802.1x](https://www.esecurityplanet.com/views/article.php/3899996/How-to-Use-Enterprise-WiFi-Encryption-and-8021X-in-Mac-OS-X.htm)
- [Port Specifications for Apple Services](https://support.apple.com/en-us/HT202944)


#### Security

- [Sudoers Modification](https://derflounder.wordpress.com/2016/07/11/editing-etcsudoers-to-manage-sudo-rights-for-users-and-groups/)
- PPPC
	- [Derflounder](https://derflounder.wordpress.com/2018/08/31/creating-privacy-preferences-policy-control-profiles-for-macos/)
- Approving KEXTs
	- [Derflounder](https://derflounder.wordpress.com/2018/04/12/whitelisting-third-party-kernel-extensions-using-profiles/)
	- [Vendor KEXT Info](https://docs.google.com/spreadsheets/d/1IWrbE8xiau4rU2mtXYji9vSPWDqb56luh0OhD5XS0AM/edit#gid=0)
- [Making Changes to the authorizationdb](https://derflounder.wordpress.com/2014/02/16/managing-the-authorization-database-in-os-x-mavericks/) 
	- `security authorizationdb read <system.preferences.[preferencez_setting_name>`
	- `security authorizationdb read referenced.rights > /path/to/filename.plist`
	- `security authorizationdb write system.preferences allow`
	- `security authorizationdb write system.preferences.startupdisk allow`


#### Encryption & FileVault

- [Manage FileVault with `fdesetup`](https://derflounder.wordpress.com/2015/12/20/managing-el-capitans-filevault-2-with-fdesetup/)
- [FileVault Institutional Recovery Keys - DerFlounder](https://derflounder.wordpress.com/2014/08/13/filevault-2-institutional-recovery-keys-creation-deployment-and-use/)


### Support

- [ABM Support Numbers](https://help.apple.com/businessmanager/?lang=en-us#/apd098f3d709)


#### MISC

- [Apple Video Adapters and Cables](https://support.apple.com/en-us/HT201853 "About Apple Video Adapters and Cables")


\[[top](#top)]

<a name="unix_linux"></a>

## Unix & GNU/Linux

-   [Sane scanner](https://wiki.archlinux.org/index.php/SANE)
-   [Linux Journey](https://linuxjourney.com/lesson/etc-group-file)
-   netboot.xyz
-   Banking with a live cd: <http://krebsonsecurity.com/2012/07/banking-on-a-live-cd/>
-   SSH Tricks: <http://www.linuxjournal.com/article/6602>
-   Rsync command examples - <http://www.thegeekstuff.com/2010/09/rsync-command-examples/>
-   POSIX - <https://en.wikipedia.org/wiki/POSIX>
-   Security Enhanced Linux: <http://selinuxproject.org/page/Main_Page>
-   Cool old terminal - old looking terminal for linux: <http://linuxg.net/how-to-install-cool-old-term-0-9-on-ubuntu-14-04-debian-jessie>

\[[top](#top)]


## Related to Windows Administration

- List of WMIC CSProduct Get Name Results - <http://faqshop.com/misc/list-of-wmic-csproduct-get-name-results/>
- [Troubleshooting Slow Logons via PowerShell](https://www.citrix.com/blogs/2015/08/05/troubleshooting-slow-logons-via-powershell/)
- [Logon GPO Analysis via PowerShell](https://www.controlup.com/blog/logon-gpo-analysis-via-powershell/)
- [Windows 10 Environment Variables](https://www.tenforums.com/tutorials/3234-environment-variables-windows-10-a.html)


### Tools

- [Windows ISO Downloader](https://heidoc.net/joomla/technology-science/microsoft/67-microsoft-windows-and-office-iso-download-tool)
- [GPO Migration Tool](https://code.vmware.com/samples/3527/airwatch-gpo-migration-tool?h=gpo%20migration%20tool)


### MSFT Office

- [Change Native Language](https://www.jamf.com/jamf-nation/discussions/25722/changing-languages-in-office-2016)

	```shell
	defaults write com.microsoft.Excel AppleLanguages ‘(“ES”)’
	defaults write com.microsoft.Powerpoint AppleLanguages ‘(“ES”)’
	defaults write com.microsoft.Word AppleLanguages ‘(“ES”)’
	```
	
- [macadmins.software](https://macadmins.software)
- [Mac Office 2011 Rem Tool](https://github.com/pbowden-msft/Remove2011/blob/master/Remove2011)
- [Office One-click login - Jamf](https://www.jamf.com/blog/help-users-activate-microsoft-office-365-and-configure-outlook-in-one-click/)

### Active Directory/AzureAD/LDAP

- Objects
	- CN = Common Name
	- OU = Organizational Unit
	- DC = Domain Component
- Example Search Criteria
	- ("CN=Dev-India,OU=Distribution Groups,DC=gp,DC=gl,DC=google,DC=com");


#### AzureAD

- Password Hash Synchronization with AzureAD

	- [What is password hash synchronization with Azure AD?](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-phs)
	- [What is federation with Azure AD?](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-fed)


### OIDC & Microsoft Identity Platform

- [Identity Platform](https://docs.microsoft.com/en-us/azure/active-directory/develop/about-microsoft-identity-platform)
	- [2.0](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-overview)
- [Microsoft identity platform and OpenID Connect protocol](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-protocols-oidc)


\[[top](#top)]

### SCCM Administration

-   [SCCM Queries with PowerShell](http://blog.ctglobalservices.com/powershell/kaj/working-with-queries-in-configmgr-with-powershell/)

-   [WMI SCCM Queries](https://www.andersrodland.com/ultimate-sccm-querie-collection-list/)

-   Convert from BIOS to UEFI Using SCCM - <https://www.systemcenterdudes.com/sccm-bios-uefi-conversion-task-sequence>

    -   Another Article regarding Bios to UEFI conversion - <https://docs.microsoft.com/en-us/sccm/osd/deploy-use/task-sequence-steps-to-manage-bios-to-uefi-conversion>

-   Deploy Windows from Captured Media -  <https://blogs.technet.microsoft.com/configurationmgr/2010/04/12/how-to-set-up-a-task-sequence-to-deploy-windows-7-images-captured-via-an-sccm-2007-capture-cd/>

-   Driver management - <https://technet.microsoft.com/en-us/library/hh301101.aspx>

\[[top](#top)]


<a name="mdm"></a>

## MDM

<a name=“apple_apns”></a>
### Apple

- [MacOS WiFi Login Window Profile]( https://ntsystems.it/post/joining-wifi-before-login-on-mac-os-x-108)
- APNS URI (Jamf --> Apple APNS)
	- api.push.apple.com | 443
	- feedback.push.apple.com* | 2196
- APNS URI (Mac Client --> Apple APNS)
	- courier.push.apple.com | 5223
	- [APNS Under the Hood](https://www.youtube.com/watch?v=E39aYd2RMdE&t=1568s)
- Additional FQDNs
	- albert.apple.com
	- iprofiles.apple.com
	- *.symcb.com
	- evintl-ocsp.verisign.com
	- evsecurer-oscp.verisign.com
- [Set a Policy Banner at Login Window](https://support.apple.com/en-us/HT202277)


#### DEP Debug

https://jamf.it/dep-debug

1. Start up the freshly-wiped Mac into single-user mode: at boot hold down CMD + S
1. Mount the boot drive as read/write: /sbin/mount -uw /
1. Enable opendirectory:
1. launchctl load /System/Library/LaunchDaemons/com.apple.opendirectoryd.plist
1. Ignore the error that is thrown and click Enter
1. Enable root password: passwd root
1. Reboot: reboot
1. When Setup Assistant is up but we haven’t yet advanced to the Remote Management pane, launch Terminal by clicking CTL + OPTION + CMD + T, then run the following:

	```bash
	su root 
	defaults write /Library/Preferences/com.apple.apsd EnableDetailedLogging -bool TRUE
	defaults write /Library/Preferences/com.apple.MCXDebug debugOutput -2
	defaults write /Library/Preferences/com.apple.MCXDebug collateLogs 1
	touch /var/db/MDM_EnableDebug
	```

1. Run the Mac through the DEP prestage enrollment as normal, once booted to the Desktop, we should find the log written to: /Library/Logs/ManagedClient/ManagedClient.log

<a name=“jamf”></a>
### Jamf

- [API Support](http://developer.jamf.com/apis/jamf-pro-api/index)
- [New Swagger API - https://[your_url].jamfcloud.com/uapi/doc](https://[your_url].jamfcloud.com/uapi/doc/#/departments)
- [Service Status](status.jamf.com)
- [Ports Used](https://www.jamf.com/jamf-nation/articles/34/network-ports-used-by-jamf-pro)
- [JamfCloud IP Addresses](https://www.jamf.com/jamf-nation/articles/409/permitting-inbound-outbound-traffic-with-jamf-cloud)
- [Single Sign-On](http://docs.jamf.com/10.10.0/jamf-pro/administrator-guide/Single_Sign-On.html)
	- [Okta](https://www.jamf.com/jamf-nation/articles/435/configuring-single-sign-on-with-okta)
	- [ADFS](https://www.jamf.com/jamf-nation/articles/436/)
	- [Shibboleth](https://www.jamf.com/jamf-nation/articles/437/)
	- [OneLogin](https://www.jamf.com/jamf-nation/articles/438/)
	- [Ping Identity](https://www.jamf.com/jamf-nation/articles/439/)
	- [G-Suite](https://www.jamf.com/jamf-nation/articles/440/)
- [AzureAD LDAPS](https://www.jamf.com/jamf-nation/discussions/25876/a-guide-to-jss-azure-ad-integration-ldap-+-sso)
- [Okta LDAP Integration](https://travellingtechguy.eu/integrating-okta-ldap-in-jamf-pro/)
- [All Product Documentation](https://www.jamf.com/resources/product-documentation/)
- [Jamf Pro Security Overview](https://www.jamf.com/resources/product-documentation/jamf-pro-security-overview/)
- [JIM Install Guide](http://docs.jamf.com/infrastructure-manager/1.3.2/Installing_a_Jamf_Infrastructure_Manager_Instance.html)
- [MacOS Security Checklist](https://resources.jamf.com/documents/products/documentation/macos-security-checklist.pdf)
- [Conditional Access with Azure](https://resources.jamf.com/documents/white-papers/conditional-access-going-beyond-perimeter-based-security.pdf)


#### Packaging

- [Re-packaging Installer Packages](https://derflounder.wordpress.com/2013/11/03/re-packaging-installer-packages-with-packages/)
- [Package Management](https://docs.jamf.com/10.9.0/jamf-pro/administrator-guide/Managing_Packages.html)


#### Tools

- [JamfConnect Sync](docs.jamf.com/jamf-connect/1.0.0/sync/administrator-guide)
	- [File Shares](https://docs.jamf.com/jamf-connect/1.0.0/sync/administrator-guide/File_Shares.html?)
- [JamfConnect Verify](https://docs.jamf.com/jamf-connect/1.0.0/verify/administrator-guide/Overview.html)
	- [Preference Keys](https://www.jamf.com/jamf-nation/articles/628/jamf-connect-verify-preference-keys)
	- [Jamf Connect and ADFS Incorrect Password issue](https://travellingtechguy.eu/jamf-connect-and-adfs-incorrect-password/#comment-12953)
- [JamfConnect Login](https://docs.jamf.com/jamf-connect/1.0.1/login/administrator-guide/Overview.html)
	- [Jamf Connect Login with Azure](https://travellingtechguy.eu/jamf-connect-login-with-azure/)
- [NoMAD Helper](https://www.youtube.com/watch?v=fQ4Epy1J7ZU)
- [Composer User Guide](https://www.jamf.com/resources/product-documentation/composer-user-guide/)
- [Packages](http://s.sudre.free.fr/Software/Packages/about.html)


<a name=“wso”></a>
### Workspace ONE

- [Airwatch Samples](https://github.com/vmware-samples/AirWatch-samples/tree/master/Windows-Samples/Sensors)
- [AirWatch Learning Path](https://mylearn.vmware.com/mgrReg/plan.cfm?plan=47955&ui=www_edu)
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
- [Workspace ONE Provisioning Tool](https://labs.vmware.com/flings/vmware-workspace-one-provisioning-tool)


<a name=“msft_azure”></a>
### MSFT Azure

- [REST API](https://docs.microsoft.com/en-us/rest/api/azure/)

<a name=“MI”></a>
### Mobile Iron

- 

\[[top](#top)]
<a name="scripting-and-languages"></a>

## Virtualization

-	[VDI Design Guide](https://vhojan.nl/category/vdi-design-guide/) | Johan van Amersfoort
- 	[Desktop as a Service: Everything you need to know about DaaS and hosted VDI](https://www.amazon.com/gp/product/0985217421/ref=ox_sc_act_title_2?smid=ATVPDKIKX0DER&psc=1) | Brian Madden
-	[VMware vSphere 6.5 Hosted Resources Deep Dive](https://www.amazon.com/gp/product/1540873064/ref=ox_sc_act_title_3?smid=ATVPDKIKX0DER&psc=1) | Frank Denneman


### VMware WSO Identity Manager

#### Troubleshooting

- Health API Endpoints for vIDM and On-Prmise implementations respectively.

	`https://<idM_SERVER_NAME>/hc/API/1.0/REST/system/health?pretty`
	`https:/</idm_server_name>/SAAS/API/1.0/REST/system/health`

### VMware Horizon

- [Horizon 7 Documentation](https://docs.vmware.com/en/VMware-Horizon-7/index.html)
- Carl Stalhood - [www.carlstalhood.com/](http://www.carlstalhood.com/)
	- [7.7-8 - Installation](https://www.carlstalhood.com/vmware-horizon-7-configuration/#vcenter)
- 50 Articles to fix everything - https://blogs.vmware.com/kb/2015/03/50-kbs-fix-everything-horizon-view.html
- [WorkspaceONE Horizon Reference Arch](https://techzone.vmware.com/resource/workspace-one-and-horizon-reference-architecture#horizon-seven-vmware-identity-manager-integration)


#### Upgrading

- [Horizon 7-7.8 Upgrade Documentation](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-upgrades/GUID-E3607442-8936-49A8-97B4-722D012FDF1E.html)


#### vSphere (ESXi) Server

- [Install and Setup - ESXi 6.7](https://docs.vmware.com/en/VMware-vSphere/6.7/vsphere-esxi-671-installation-setup-guide.pdf)
- [Install ESXi 6.7 on Workstation, VirtualBox, and Bare Metal](https://www.sysnettechsolutions.com/en/vmware/install-vmware-esxi-6-7/)
- [Create a Customization Specification for Windows - vSphere 6.7](https://docs.vmware.com/en/VMware-vSphere/6.7/com.vmware.vsphere.vm_admin.doc/GUID-CAEB6A70-D1CF-446E-BC64-EC42CDB47117.html?hWord=N4IghgNiBcKEQEACA4gVwKYGcAuCDCLsB7AWwEsAvMLUwgOwQHcKwAnAExAF8g)


#### vCenter Server

- [Install and Setup - vCenter 6.7](https://docs.vmware.com/en/VMware-vSphere/6.7/vsphere-vcenter-server-671-installation-guide.pdf)
- [vCenter User Privilege Requirements - 7.7-8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-installation/GUID-A878F876-B359-42FC-9124-A1E34BFB3319.html)


*Linked Clones*

- [Linked Clone Worksheet - Horizon 7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-console-administration/GUID-F336E9DA-EC69-440A-A1B8-28E4FDC1784B.html)


*Configuration Specifications*

- [Create a Customization Specification for Windows](https://docs.vmware.com/en/VMware-vSphere/6.7/com.vmware.vsphere.vm_admin.doc/GUID-CAEB6A70-D1CF-446E-BC64-EC42CDB47117.html?hWord=N4IghgNiBcKEQEACA4gVwKYGcAuCDCLsB7AWwEsAvMLUwgOwQHcKwAnAExAF8g)
- [Guest Operating System Customization Requirements](https://docs.vmware.com/en/VMware-vSphere/6.7/com.vmware.vsphere.vm_admin.doc/GUID-E63B6FAA-8D35-428D-B40C-744769845906.html#GUID-E63B6FAA-8D35-428D-B40C-744769845906)


#### Unified Access Gateway

- [Load Balancing](https://communities.vmware.com/docs/DOC-32792)
- [UAG 3.5 - Carl Stalhood](https://www.carlstalhood.com/vmware-unified-access-gateway/)
- [Replace the Default TLS/SSL Server Certificate for Unified Access Gateway](https://docs.vmware.com/en/Unified-Access-Gateway/3.1/com.vmware.uag-31-deploy-config.doc/GUID-EDC244DD-07AB-4841-A893-84ADF8D59838.html)

#### View Connection Server

- [Installation Pre Requisites - Horizon 7-7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-installation/GUID-68621B8E-F018-4BC4-811A-5CF76B55DB2C.html)
- [Installation - Carl Stalhood](https://www.carlstalhood.com/vmware-horizon-7-connection-server/)
	- Does require load balancing for multiple View Connection Servers
- Hardware
	- 4 CPUs
	- 10 GB MEM
	- 100 GB Disk
- Connections
	- Horizon 7.2 and newer: 4000 connections
	- Horizon 7.1 <= x < 7.2: 2000 connections
- [Creating Single-User Desktop Pools](https://techzone.vmware.com/quick-start-tutorial-series-vmware-horizon-7/creating-single-user-desktop-pools#915877)


#### Database Information

- [Create the ViewEvent Database - Horizon 7.7-8](https://www.virtuallyboring.com/vmware-horizon-view-7-create-events-database/)


#### Persona Management 

- [Configuring a Horizon Persona Management Deployment](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-virtual-desktops/GUID-E9411421-EE62-4870-98CA-ADEE7B70EB32.html)
- [Best Practices for Configuring a Horizon Persona Management Deployment](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-virtual-desktops/GUID-574E2280-E796-4946-8CE4-6617683B5BE3.html)
- [Providing User Personas in Horizon 7 - Horizon 7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-virtual-desktops/GUID-F9F1320A-F6BC-4120-8A8D-2D5F73F79335.html)
- [Using Horizon Persona Management to Retain User Data and Settings - Horizon 7 7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-architecture-planning/GUID-05B1BE12-8DD2-4EAE-A3E2-B52CDB6DFC32.html)
- [Horizon Persona Management and Windows Roaming Profiles](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-virtual-desktops/GUID-E158A9D4-5FCD-4A61-B987-D01622A96FBF.html)


#### View Composer

*View Composer Database*

- [Prepare View Composer DB](https://docs.vmware.com/en/VMware-Horizon-7/7.0/com.vmware.horizon-view.installation.doc/GUID-4CF63F93-8AEC-4840-9EEF-2D60F3E6C6D1.html)
- [Event DB Sizing](http://myvirtualcloud.net/vmware-view-database-sizing/)


#### vSAN

- [Design and Sizing - 2014](https://www.vmware.com/content/dam/digitalmarketing/vmware/en/pdf/whitepaper/products/vsan/vmw-tmd-virt-san-dsn-szing-guid-horizon-view-white-paper.pdf)


#### Active Directory

- [Preparing AD for Horizon - Horizon 7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-installation/GUID-F6075DF0-9614-4A81-B27A-7EE7C4CCB46F.html)
- [Accounts and Permissions - Horizon 7](https://thevirtualhorizon.com/2016/08/08/horizon-7-0-part-6-service-accounts-and-databases/)


#### Tools

- [Horizon 7 Component Installers](https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_horizon/7_0)
- [ESXi Configuration Maximums](https://kb.vmware.com/s/article/1003497)
- [Health Analyzer](https://vmware.my.salesforce.com/apex/page?name=sales.services.software.solutions)
- [Interoperability Matrix](https://www.vmware.com/resources/compatibility/sim/interop_matrix.php)
- [Digital Workspace Topology Tool](https://tools.techzone.vmware.com/static/topology/index.html#result)
	- [Blog Post](https://blogs.vmware.com/euc/2019/02/introducing-the-vmware-digital-workspace-topology-tool.html?src=so_5a314d05e49f5&cid=70134000001SkJn)
- [Digital Workspace Designer](https://code.vmware.com/group/dp/dwdesigner#)


#### User Information

- [Horizon 7 User Accounts - 7-7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-security/GUID-7C94B12F-0158-42EB-A011-00CC4912A435.html)
- [vCenter Server User for Horizon 7 and View Composer - 7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-installation/GUID-80D653FA-BCC0-45B9-AF84-5E0EEC2AD139.html)
	- [vCenter Server Role Permissions - 7-7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-installation/GUID-A878F876-B359-42FC-9124-A1E34BFB3319.html#GUID-A878F876-B359-42FC-9124-A1E34BFB3319)
- [View Composer and Instant Clone Privileges Required for the vCenter Server User - 7-7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-installation/GUID-467F552F-3034-4917-A985-B5E5FEC5C68F.html#GUID-467F552F-3034-4917-A985-B5E5FEC5C68F)
- [Instant Clone Operations User Account - 7-7.8](https://docs.vmware.com/en/VMware-Horizon-7/7.8/horizon-installation/GUID-E91881F4-F8C0-48A5-A1A4-61577E287E29.html)


## Related to Scripting & Development

- [HTTPS Status Code Explainations](https://httpstatuses.com/)
- [shields.io](https://shields.io)
- [Unicode Character DB](http://www.unicode.org/reports/tr44/#GC_Values_Table)


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

- [Bash Cheat Sheet](https://devhints.io/bash)
- [bashoneliners.com](http://www.bashoneliners.com/oneliners/oneliner/popular/)
- Shell Variables - <https://www.gnu.org/software/bash/manual/bash.html#Shell-Variables>
- User input with a while loop - <http://alvinalexander.com/linux-unix/shell-script-how-prompt-read-user-input-bash>
- 8 examples of Bash if statements - <http://bencane.com/2014/01/27/8-examples-of-bash-if-statements-to-get-you-started/>
- [25 Simple Find commands](http://www.binarytides.com/linux-find-command-examples/)
- [The /sbin Directory](http://www.linfo.org/sbin.html)
- [Working with tar](http://www.tecmint.com/18-tar-command-examples-in-linux/)

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
