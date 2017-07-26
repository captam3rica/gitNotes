# Useful find commands in Linux & Unix

- `find /tmp -type f -name ".*txt" -exec ls -ltr {} \;`

- `find /home/[username] -type -d -name 'VirtualBox VMs' ! -perm 775 -exec chmod -R ug+rwx {} \;`


http://www.binarytides.com/linux-find-command-examples/
