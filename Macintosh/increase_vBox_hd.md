# Increase Virtual Box HD

1. Open terminal and go to the location of the VirtualBox virtual machines.  
  `cd ~/[location of VMs]VirtualBox\ VMs/`
2. Use the `modifyhd` command to increase the size of the disk  
  `VBoxManage modifyhd [disk name].vdi --resize [size in MB]`
    - Example: `VBoxManage modifyhd myDisk.vdi --resize `
3. VirtualBox will start to increase the size of the disk
    - 10..20..30..40..
4. Startup the VirtualBox Windows VM and type "computer management" in the start menu.
5. Go to "Disk Management".
6. Expand the size of the disk by right-clicking and choosing "Expand Volume".
