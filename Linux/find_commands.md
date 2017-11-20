# Useful find commands in Linux & Unix

Find and list all files with the **.txt** file extension in the **/tmp** directory.

`find /tmp -type f -name ".*txt" -exec ls -ltr {} \;`

Find a directory with a specific name. Check to see if the permissions have changed. If the permissions have changed, change them to the setting.

-   `find /home/[username] -type -d -name 'VirtualBox VMs' ! -perm 775 -exec chmod -R ug+rwx {} \;`

Find all files in a given directory (including recursion) and change the permissions.

-   `find . -type f -exec chmod 600 {} \;`

http://www.binarytides.com/linux-find-command-examples/
