# Using the Network Connector with Linux

The Network Connector is available for use with Linux 2.4 or higher integrated with the TUN/TAP driver.

No separate client software is needed to connect from Linux systems to the Network Connector service, since most modern Linux distros already contain the required support in the OpenVPN NetworkManager-openvpn packages. However, a configuration file must be installed in order for the system to connect to the Barracuda SSL VPN.

Step 1. Install OpenVPN NetworkManager

If it is not already installed on your system, install OpenVPN NetworkManager. Depending on your Linux distribution, you may need to do this via one of the following methods:

- Deb based Linux distributions (Ubuntu, Debian,...) In a terminal enter: `sudo apt-get install network-manager-openvpn`
- RPM based Linux distributions (Redhat, SUSE,...) –  In a terminal enter (as root): `yum install NetworkManager-openvpn`
- Arch: `sudo pacman -S NetworkManager-openvpn`

Step 2. Download Client Configuration File

Download and save the client configuration file for the network connector:

- Log into the  SSL VPN web interface.
- Go to the RESOURCES > My Network Connector page.
- Next to the LAN1 Connector, click on the More... link next to the client configuration file.
- Select Download Client Configuration file from the list.
- Save and extract the downloaded file to the users home directory. E.g.,$HOME/SSLVPN.

Step 3. Configure Network Manager

Configure the Network Manager applet on your Linux system. Exact steps may vary based on your particular Linux distribution, but the resulting settings should be equivalent.

- Left-click on the Network Manager entry on your Linux system panel and select VPN Connections > Configure VPN.
- Click Import.
- Select the Linux ovpn configuration file. E.g., $HOME/SSLVPN/linux-<Network Connector name>.ovpn
-  Enter the Username and Password.
- Click Save.

Step 4. Initiate the Connection

Initiate a secured connection through the Barracuda SSL VPN:

- Left-click on the Network Manager entry on your Linux system panel and select VPN Connections > Name-for-your-VPN-Connection.
- An animated icon will appear while the connection is being made.
- When connected, the icon will change to show a padlock.
