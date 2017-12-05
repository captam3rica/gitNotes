# Change CentOS Hostname

1. Edit the `/etc/sysconfig/network` file

        $ sudo vim /etc/sysconfig/network

2. Update the `HOSTNAME` field

        HOSTNAME=[yourhostname]

3. Edit `/etc/hosts` for internal networking purposes. This is useful for things like ssh via hostname instead of typing the IP address every time.

        [your IP address]   [yourhostname.domain.com]   [yourhostname]


4. Update the command line interface so that it will recognize the new hostname.

        $ sudo hostname [yourhostname.domain.com]

5. Restart the network interface

        $ sudo systemctl restart network
        $ sudo systemctl reboot
