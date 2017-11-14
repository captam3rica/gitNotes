# Systemctl Power Management 

polkit is necessary for power management as an unprivileged user. If you are in a local systemd-logind user session and no other session is active, the following commands will work without root privileges. If not (for example, because another user is logged into a tty), systemd will automatically ask you for the root password.

### Shut down and reboot the system:

`$ systemctl reboot`


### Shut down and power-off the system:

`$ systemctl poweroff`


### Suspend the system:

`$ systemctl suspend`


### Put the system into hibernation:

`$ systemctl hibernate`


### Put the system into hybrid-sleep state (or suspend-to-both):

`$ systemctl hybrid-sleep`

