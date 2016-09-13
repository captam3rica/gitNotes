# Printer Configuration KSU

Instructions for adding a PS01 printer to a client's computer

PC:

1. Click the Start button
1. Click on Devices and Printers
1. Click on Add a printer
1. Click on Add Network printer
1. Click on "The printer I want isn't listed"
1. Select "Select a shared printer by name"
1. Type '\\ps01\printername'
1. Click next
1. Install driver
1. Click Finish

Mac:

1. Open System Preferences from the Applications menu
1. Select Print & Scan
1. Click on the + at the bottom of the left pane (You may have to click the lock in the bottom left and enter your username and password first)
1. Select "printername"
1. You will need to select the driver by going down to Print Using/Use and choosing "Select printer Software..." from the drop down menu
1. Type the model of the printer into the filter
1. Select the printer model and click Okay
1. Click Add
1. [P tag for printer]

CREATING A QUEUE ON PS01:

1. New Printer ticket comes in from a TSS or ITIM. Ticket should contain:
    - Current IP Address
    - Mac Address
    - Asset Tag
    - Room Number
    - Contact Person
    - NOTE: If any pieces are missing, you can usually obtain the needed information through the asset management database. If the asset tag is missing, obtain the serial number by connecting to the printer via IP Address and search the asset management database by serial number.
1. Send ticket with all of the above information to Network to request a DHCP reservation for the printer.
1. Network will send the ticket back with a new IP address.
1. Send the ticket to Apps with the following information to request a printer group be created:
    - Asset tag
    - Printer Name (Naming convention: DepartmentAbbreviation-HPModelNumber-AssetTagNumber)
    - Department that owns the printer
    - Path to the batch file that will be used for automatic emails (\\win\netlogon\ksu\workstation\printershortcuts\*PrinterName*.bat)

Asset tag:
Printer Name:
Department:
Path (\\win\netlogon\ksu\workstation\printershortcuts\*PrinterName*.bat)

1. Operations will create a group for the printer and send the ticket back. (Group name: printer_*AssetTag*). Group should automatically populate with the people of the department you listed the following morning.
1. Open Print Management from Adminstrative Tools

To add to PS01:

1. Right-click "Print Management" in the left pane
1. Select, "Add/Remove Servers"
1. Type, "ps01" in the Add Servers box and click "Add to List"
1. Click OK
1. Expand "Print Servers"
1. PS01 should now be listed

Add Printer to server:

1. Right-click PS01
1. Select, "Add Printer"
1. Select, "Add a TCP/IP or Web..." and click Next
1. Enter the IP address that Network assigned for the printer in both boxes, leave Auto-Detect driver unchecked. (If the port name is followed by a "_1", the the IP address is already being used by a Printer on PS01)
    - If it is unable to detect the printer, select "Hewlett Packard Jet Direct" from the dropdown and click Next, otherwise skip this step.
    - Select, "Install a new driver" and click Next
    - Select a driver. Use "HP Universal Printing PCL 6 (v5.8.0)" if possible. (Most HP printers are compatible, exceptions are Designjet and Officejet printers. You need to use model specific drivers for those)
    - Enter the printer name that you sent over to Operations for both Printer Name and Share Name. Enter room number for location and add contact person for comment and click Next.
    - Printer will be installed on the server. It can take up to an hour for this process to finish. There is a script in place to take care of the initial permission setup and shortcut creation. The script will:
    - Remove the "Everyone" group from the printer
    - Add the "printer_*AssetTag*" group to the priinter
    - Create a "*PrinterName*.bat" file at \\win\netlogon\ksu\workstation\PrinterShortcuts\
1. Once the printer group has been populated (usually the next morning), notify the customer that the printer setup is complete and send them the details to connect to it. Go into Properties for the printer and go to the Security tab. Verify that the group that Operations created is there and remove any individual names that show up. Anyone who is listed as an owner on PS01 will automatically populate. If the printer is an open lab or the requestor asks for it to be open to everyone, you can add EVERYONE to the list of people that can print to this printer. Even if the requestor is wanting everyone to have access, you should forward the ticket to Operations to have a group created. This will prevent any delays later if the customer changes their mind.

The admin/network password is not setup by default. Set it to prevent other people from creating one or changing the settings.

PS01 MAINTENANCE:

If a ticket comes in to add somebody to a printer, you will use the application that Operations created to add them. It's called UNI Campus Directory Module - LDAP. To add somebody to a group, go into the app, click on Manage Groups, type in the asset tag number in the search box, and hit Enter. Click on Members, select Inline Add, select either Netid or KSU ID Number, and type in their information. Put in the start date. Hit the green check mark to save this information.(NOTE: Currently the app does not save this information after only adding it once. You will want to select the name you just added, select Edit selected, and save it again. Continue doing this until you get an error. The error means it's saved.) Once you have added it, it can take up to an hour for the customer's access to reach their computer. For this reason, you probably want to wait an hour and then send them an e-mail letting them know the access has been granted and give them instructions for adding the printer to their computer.

If a printer is moved and the IP address is changed, the technician that makes the move needs to inform us, so the IP address can be changed on the back end. Networking will need to give the printer a new static IP. They will need the same information they needed to set it up initially. Once there is a static IP, the change can be made to the print queue. To make this change, right-click on the printer and choose Properties. Select the Ports tab. Choose Add Port.... Select Standard TCP/IP Port and click New Port.... Select Next and type in the new IP address. Select Next, again. Choose Finish. Delete the old port to free it up. You can do this by finding the old IP address, highlighting it, and selecting Delete Port.

If printers are swapped or replaced, the technician who does this, should notify ICS. This should be treated as a new printer and the old print queue should be deleted. Also, let Networking know the old IP address, so they can free it up for future use.

If the printer is completely removed, the technician should also inform us, so that the print queue can be deleted and the IP address can be freed up.

Pushing out printers through group policy:

Troubleshooting:

Printer prints gibberish - Verify that they aren't on a Mac and change the driver to Universal Print Driver PCL 5. If that doesn't resolve it and it's not just one person having issues, try to install the print driver that is made for that model of printer. If there is only one person having the issue, check to see if they are on a 32-bit or 64-bit version of Windows. Check their version against the driver version you have installed. You can do this by right-clicking on the printer and choosing Properties. Go to the Sharing tab and select Additional Drivers... and make sure that both 32-bit and 64-bit are checked. If both are checked, the issue is on the workstation. The TSS or Service will need to work with the customer to resolve the issue. It's typically going to be a virus.

Unable to print - If multiple people are unable to print, it's typically going to be an SNMP issue. Open Print Management. Highlight the printer that the issue is with and select Printer Web Page on the bottom section of the screen. The next section will vary from printer model to printer model. Typically, you will need to go to the Networking tab and find SNMP. SNMP should be set to Enable SNMPv1/v2 read-only access (uses "public" for the Get Community Name). You also need to verify that the port is setup for SNMP. If you open the printer properties, go to Ports, choose Configure Port..., and verify that SNMP Status Enabled is checked and that the community name is "public".

Other things that you can check, verify that SLP and LPD printing is checked. Those settings will be on the Printer Web Page, but the location will vary from printer to printer. When in doubt, find another printer that is the same model, that you know is working, and try to duplicate the settings.

PCL XL Error - For this error try going into Set Printing Defaults and on the Printing Shortcuts tab, change the paper type to Plain.

Bipassing PS01 - If you get complaints that people are printing to a printer that they shouldn't be and the person is not printing through PS01, you can setup the printer to not allow anyone to print to it, except the PS01 server.

Notes:

- If the user wants to have local scanning functionality, the HP easy start package will need to be installed. This can be grabbed from the hp software page for the printer.
- If the customer wants to use the "Scan to Email" feature. There are some settings on the printer's Web page that will need to be configured.
    - Example: FinAid-HPLJProM426fdn-P35828

PRINTER HARDENING:

- Disable:
    - Telnet
    - FTP
    - TFTP
    - Bonjur
    - IPv6
    - AirPrint
    - SNMP - Read Only
- Password:
    - jeep29
- Printer Properties on PS01:
    - Remove the "Everyone" group from the printer
    - Add the "printer_*AssetTag*" group to the printer

MISC:

- Note: Keep Bonjour option on in the President's offices.
- SLP - allows other devices to find the printer if they are on the same network.
- LLMNR - Allows for host resolution for devices on the same local link.
- WS-Print
- IPP
- IPPS
- WS-Discovery
- BOOTP
- Multicast IPv4
- HP Jetdirect XML Services
- Certificate Mgmt Service
- 9100 Printing

Firmware:

- Update firmware for the printer if possible.
