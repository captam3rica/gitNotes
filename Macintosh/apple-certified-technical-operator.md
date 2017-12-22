# Apple Certified Technical Coordinator 10.11

Install and configure macOS Server app, and services.

## Installing OSX Server

### History

-   32-bit OS cannot run Mac OS server
-   El Cap and newer

### Requirements & Considerations - minimum

-   2G Ram
-   8G HDD or SDD
-   Set a static IP address - make sure outside of DHCP scope
-   Change energy saver settings to that it want turn off
-   Set the hostname
-   Possibly partition the hard drive or have a separate drive for storage.

### Drive Configuration 

-   OSX Extended Journaled (HFS+)
-   Be careful about encryption on a server. Service will not startup because
    user credentials are required before the system can boot. 

### Server App

**Note**: Don't forget to configure any secondary drives or partitions before
launching the server app.

-   Configuration files: `/Library/Server`

-   Can use the server app to manage remote macOS servers

-   `Dashboard > Storage`: can change the storage location for service data

    -   Make sure **Ignore permissions** is unchecked on removable storage.
    -   Some service allow moving of the data storage within the service itself
        (i.e. Caching)

-   **Upgrading**: update the OS first then update the server application.

    -   Must also run the server app at least once after the app upgrade so that
        the services will be upgraded as well.
    -   Test each service after the upgrade to make sure that everything is
        working properly.
    -   Once the server app upgrades, older versions of the app cannot be
        downloaded. 

## DNS

-   Forward lookup: name to an IP address 
-   Reverse lookup: IP address to a name
-   Zones correspond to domains 
-   Text files with addresses. These files are zones 

### Configuration

-   Setup networks

-   Setup a forwarding server(s): the servers you want to use for requests outside
    of your DNS.

-   Edit lookup clients: the domains that you want to allow to perform lookups.
    (only some clients). Can be public and private networks.

-   Primary Zones & Secondary servers 

-   Records: 

    -   Define the name
    -   IP Addresse(s)
    -   Alias: www
    -   Check  **MX record** if you want to be a mail server.

-   The DNS server can have itself listed as it's own DNS server.

### Testing DNS

-   `nslookup`

    -    switch to another DNS server to perform the lookup: `server
            [dns-server-ip-address]`

    -  ` set TYPE=ANY`: will return more than just DNS info. (mail records,
            server records, spam filter records)

-   `dig`

-   Network Utility GUI

### Lookups 

-   **Search Domains**: 

    Shortcuts for name lookups. If a period is not added to the
    end of the domain DNS will try to added the rest of the domain to the
    lookup.
