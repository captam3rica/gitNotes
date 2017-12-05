# VMware Fusion | vmrun

- [vmware support](https://www.vmware.com/support/developer/vix-api/vix112_vmrun_command.pdf)

*   Fusion must be installed

*   cd to /Applications/VMware Fusion.app/Contents/Library

*   run ./vmrun to see a list of commands

    *   Tried exporting this directory location to $PATH but doesn't work at the
    moment

## Remotely

**Running VMware vSphere Remotely:**

In VMware vSphere, use the -T flag to connect to an ESX/ESXi host or to the
vCenter Server.

    vmrun -T esx
    vmrun -T vc

VMware vSphere requires additional flags for connections to an ESX/ESXi host
or to vCenter Server (VC):

    -h <hostName or IPaddr>
    -P <Port Number> (defaults to 443)
    -u <adminLogin on ESX/ESXi or VC>
    -p <adminPassword on ESX/ESXi or VC>

The port number defaults to 443. You can also specify the port number in the -h
option after the host name or IP address, separated by a colon, using standard
URL syntax. For example, the following command lists all running virtual
machines on a remote ESX/ESXi host:

    vmrun -T esx -h esx.example.com:8333 -u root -p secretpw list
    vmrun -T server -h vm2.example.com:443 -u root -p secretpw list

To set the host type forremote access to VMware Server 1.0.x, use the mandatory
-T option, the -h option with the host name instead of the URL, and the -P
option with the port number.

    vmrun -T server1 -h vm1.example.com -P 443 -u root -p secretpw list
