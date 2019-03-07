# Emby & Emby Server Guide

Install Docker
https://docs.docker.com/installation/#installation

Install Emby Server
docker run -it --rm -v /usr/local/bin:/target emby/embyserver instl

Or for for armhf/armv7 (Rpi 2/3): 
docker run -it --rm -v /usr/local/bin:/target emby/embyserver:armv7 instl

Or for for aarch64/armv8: 
docker run -it --rm -v /usr/local/bin:/target emby/embyserver:aarch64 instl

Run Emby Server
/usr/local/bin/emby-server

On first run answer any on-screen prompts.
Run Setup Wizard
Visit http://localhost:8096

## Troubleshooting 

### Fedora Server

If you get 

> Unable to create `/target/emby-server`: Permission Denied

Check to see if **SELinux** is enabled (Enforced) by using the **`sestatus`** command. 
You should see something similar to the follwoing:

        SELinux status:                 enabled
        SELinuxfs mount:                /sys/fs/selinux
        SELinux root directory:         /etc/selinux
        Loaded policy name:             targeted
        Current mode:                   permissive
        Mode from config file:          permissive
        Policy MLS status:              enabled
        Policy deny_unknown status:     allowed
        Max kernel policy version:      31

