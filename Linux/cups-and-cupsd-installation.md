# Cups and Cupsd Installation 

## Getting Started ...

### Install the following packages 

-   hplip, cups, ghostscript, gsfonts, cups-pdf, python-pyqt5, wget


### Start the cups daemon

-   /usr/lib/systemd/system/org.cups.cupsd.service
-   systemctl enable --now org.cups.cupsd

    **NOTE**: As of CUPS 2.0 the daemon has changed names from *cupsd* to *org.cups.cupsd*

If necessary, add yourself to the "sys" group. (if your user is an admin this is not necessary)

-   usermod -aG sys [username]

### Setup an HP  printer

-   run the hp application 

Or from the **Terminal**

-   hp-setup -u or hp-setup -i

#### Check the print spooler for print jobs

-   hp-systray

### Drivers

-   `/usr/share/ppd/`

## Commands

-   lprm - remove last entry only
-   lprm - -to remove all
-   lpq or lpq -a - to check print queue
-   lpr [file] - to print a file
-   lpr -# 17 [file]

[Arch Wiki - Cups](https://wiki.archlinux.org/index.php/CUPS)
