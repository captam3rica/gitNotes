#!/bin/sh

/usr/bin/find /Users/Shared/VirtualBox\ VMs ! -user purge -exec chown -R purge:"WIN\Domain Users" {} \;
/usr/bin/find /Users/Shared/VirtualBox\ VMs ! -perm 775 -exec chmod -R ug+rwx {} \;
