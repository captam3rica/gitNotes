# CentOS 7 Minimal

## Packages:

- yum install epel-release (repository)
- firewalld
- gcc
- python-pip
- python-devel
- postgresql-libs
- postgresql-devel
- postgresql-server
- postgresql-contrib
- libffi-devel
- git
- httpd-devel
- httpd
- openssl-devel
- mod_ssl
- vim

## Network Config:

- Check network interfaces: nuclei d
- cd /etc/sysconfig/network-scripts/
- edit the file with the same name as the interface your are trying to bring up
    - vi eno
        - BOOTPROTO=dhcp
        - ONBOOT=yes
- systemctl restart network

## Gnome Installation & Setup:

- Install: yum groupinstall "GNOME Desktop" "Graphical Administration Tools"
- Enable GUI: ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target

## Sources:

- Gnome: http://www.itzgeek.com/how-tos/linux/centos-how-tos/install-gnome-gui-on-centos-7-rhel-7.html
- Network: http://www.krizna.com/centos/setup-network-centos-7/
