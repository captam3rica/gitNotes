# Hardening MacOS Server

## Starting Point

- Scan system with Lynis

- Install SCCM or other AV?
- Enable Firewall PF and add rules
- Log retention (30 Days +)
  - Automated reporting for logs
- Secure local accounts
- Separate Admin logins
  - Use sudo instead
  - Disable the root account
  - Only allow server admins to login
- Secure the login keychain
  - Change the password for the Login keychain
- Disable all services not pertaining to the role of the Server
- Edit remote access settings
  - SSH, RDP, VNC, etc.
  - Remote access warnings
    - ssh, ARD, iCloud, BT, Network, Printer & Fax, Login window
- Energy Saver Settings
- Dock restrictions
- Exposé, Spaces, Dashboard, etc
- System Security
  - System Prefs
    - Date time
    - Desktop
    - Screen Saver
- Global password policy
- Latest vetted software updates
  - OS Up-to-date

## Lynis System Scan

### Commands
- lynis audit system
- sudo lynis audit system (run checks for root privileged services)
- lynis showw details [TEST-ID]

### Example Results
- PAM Module: https://cisofy.com/controls/AUTH-9262/
  - Meh ...
- Firewall/PF: https://cisofy.com/controls/FIRE-4590/
  - Mac OS Server Application Firewall
  - PacketFilter (Tricky to configure)
  - force vnc & ard over SSH
- Package Audit Tool: https://cisofy.com/controls/PKGS-7398/
  - App Store
- CUPS configuration: https://cisofy.com/controls/PRNT-2307/
  - Change permissions on /etc/cups/cupsd.conf (chmod 740)
- expose_php = Off: https://cisofy.com/controls/PHP-2372/
  - In /etc/php.ini.default
  - Displays php version in the Header
- allow_url_fopen = Off: https://cisofy.com/controls/PHP-2376/
  - In /etc/php.ini.default
  - Allows file downloads from PHP sites
- Deleted files still in use: https://cisofy.com/controls/LOGG-2190/
- ntpq: https://cisofy.com/controls/TIME-3128/
- Automated System Management: https://cisofy.com/controls/TOOL-5002/
- Harden Compilers: https://cisofy.com/controls/HRDN-7222/
- Malware Scanner: https://cisofy.com/controls/HRDN-7230/
  - SCEP?

## Firewall

- Retrieve statistics
- Force VNC and ARD to use SSH tunnels

### PF
- pf replaces ipfw
- Block spoofed packets
- Core Compoents
  - /etc/pf.anchors/com.apple (rules placed here)
  - /etc/pf.conf (rules referenced here)
  - /etc/pf.os
- pf uses "anchors" - Dynamic includes that can contain rules, options, tables, and even other anchors
- /sbin/pfctl to control pc

      # Allow all local loopback
      set skip on lo)

      #Normalize and defragment
      scrub in all

      # Default deny policy
      block in all

      # Allow SSH from remote
      pass in quick inet proto tcp from any to any port 22

      # AFP over TCP
      pass in quick inet proto tcp from 192.168.0.0/16 to any port 548

      # Allow all outbound
      pass out all keep state

- Create a LaunchDaemon so that pf will start reliably

Testing Rules

- pfctl -n -g -f /path/to/profile
- -n just parses rules. It doesn't load them
- -g provides extra debugging
- -f file input
- -s show rules
- -d will disable pfctl
- -e enable
- sudo pfctl -s rules
- sudo pfctl -s all


## Resources

- https://sites.sas.upenn.edu/kleinkeane/files/macnet-pf_1.pdf
