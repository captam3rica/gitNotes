# Configuration Manager Overview

## Features

- OS Deployment
- Hardware & Soft Inventory
- Software Metering
- Application & Content Mgmt
- OS & Software Updates
- Client Health & Endpoint Protection
- Remote Connection
  - VPN, MSTSC, etc.


## Config Mgr Hierarchy (site hierarchy)

- Often determined by WAN
  - WAN requirements
  - Org requirements
- Often falls along Existing AD sites
- 3 Site types
  - Central admin site (CAS)
  - Primary site (100,000 clients)
    - Can be standalone
    - Software files
    - SQL server
    - everything on one server or split
  - Secondary site
  - All sites require a database (generally have one dedicated)
- Can now change the hierarchy after initial installation (2012 SP1 R2)
  - Before, if you started with a single primary but found that you actually need multiple primaries. You would have to rip the whole thing out then install a CAS and branch the primaries off of that.
  - Now we can change the hierarchy after the fact with 2012 SP1 R2

## Central Admin Site (CAS)

- Normally in larger Orgs
- "Root" of primary and secondary sites
- Clients not assigned & doesn't process client data
  - Client never speak directly to the CAS
- Mostly reporting & centralization of metadata
  - everything syncs back to the CAS and then flows the rest of the setup
  - Secondary sites will get a subset of data though
- Roles
  - Asset Intelligence sync *
    - Only on CAS
  - Reporting services
  - Software Updating
  - System health validator
  - Endpoint protection roles *
    - Only on CAS

## Primary Standalone Site

- Manage client systems (100,000 clients, or 50,000 w/ SQL server)
- All clients assigned to primary
- Can be a child of a CAS or standalone
  - Secondaries are children to a primary only
  - Secondary used usually with slowing WAN links
- Use to control client data transmission up the hierarchy
- Can use SQL Express (Default) on secondary sites
  - [SQL Express](https://www.microsoft.com/en-us/sql-server/sql-server-editions-express)
