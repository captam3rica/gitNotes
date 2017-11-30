# Linux Foundation Certified Sys Admin (LFCSA v2.16) - Study Guide

Mon Nov  6 15:45:45 EST 2017

## Essentials

**touch**

-   Change time

-   Change modification date

-   Change access date

-   can use strings like '1 year from now'

-   `touch filename{1..n}.txt`: generate multiple files at once

### sed (stream editor)

-   `sed 's/oldtext/newtext/g' [textfile.txt]`
-   `sed -n "p" [filename.txt]`: print the contents of the file to stdout
-   `sed -n "1p" [filename.txt]`: print the first line of the file to stdout
-   `sed -n "4,7p" [filename.txt]`: print lines 4 through 7 to stdout
-   `sed -n "3+7p" [filename.txt]`
-   `sed -n "4~1" [filename.txt]`
-   `sed -n "1 ! p" [filename.txt]`: print every line except line 1
-   `sed 's/\[\[:regex:]]/{1, } [filename.txt]`

**ls**

-   ls -l file1 file2 file3
-   ls -l $(tty) same as ls -l /dev/pts/1

        crw--w----. 1 tux tty 136, 1 Dec 27 14:56 /dev/pts/1

**du**

-   `du -sch /some/dir`
-   `c` or `--total`: total size
-   `s`: summarize
-   `h`: human-readable

**sort**

-   `-h`: human-readable numeric sort (ascending)
-   \-r: reverse order

**uniq**

-   `-c`: count the uniq number of occurences
-   `-w \[n]` - the first \\\[n] characters in a line

**fmt** - format text

-   fmt filename.txt > newfilename.txt

**cut**

-   cut -d 'delemiter' -f1 filename.txt
-   \-f1-n: this is the column number for the text input

### Searching ...

#### find

-   search with the -name of the "file"
-   -iname: search ignoring case
-   -not: search for every thing execept
-   c: find character devices (dev)
-   -executable; -readable; writeable
-   -perm [mode]: files permissions are exactly (octal or symbolic) - ie 700,
644, etc.
-   -type l: for symbolic links
-   -type f: file
-   -type d: directory
-   -d, -depth: process the contents of the directory before the directory
itself
-   -maxdepth \[level] or mindepth \[level]
-   -size: find the size of files (less than or greater than)

    -   1M, 24000c, 1K, 1G

-   -group [group-name]: find files with a given group name
-   find  -atime -1:  access less than a day ago
-   -mtime: modification time

**Full Command Lines ...**

-   `find / -user syslog`: all files owned by syslog
-   `find / -perm 755`: find all files with permissions 755
-   `find / -type f -name "some-file.txt" -exec ls -lth {} \\;`:- only look for
files name "some-file.txt" then execute the "ls" command.
-   `sudo find / -type f -name "myTesT.txt" -exec chmod 707 {} \\; -exec ls -l
{} \\;`: find the file named "myTesT.txt", change the permissions, then list
the file with a long listing.

**Fun fact**

-   The following command will force you to look at each line individually until
    you have reached the end of the output. I broke my shell doing this by accident ... :)

    -   `sudo find / -type f -name "\*.txt" -exec less {} \\;`

#### locate

-   locate

    -   sudo updatedb
    -   locate filename filename filename ...
    -   must know the exact name, including case, inorder to use locate.

### Data Backups

#### tar & gzip

-   tar -cvf filename_back.tar filename.txt
-   gzip filename.tar.gz filename.tar
-   tar -zcvf filename_back_gzip.tar.gz filename.txt
-   tar -xzvf filename.tar.gz .
-   \--exclude=filname.txt: put this at the end of the cammand to add
exclusions.
-   \-p: will preserve ownership and file permissions
-   tar -tvf: look at the contents of the archive without unpacking
-   tar -rvf file.tar file.txt or dir/file.txt: append a file to an archive.
-   tar -zvcf exclusion.tar.gz mybkup/ --exclude 'mybkup/ssh': this will
exclude the ssh directory within the mybkup directory

### File Attributes

-   ugoa

    -   user
    -   group
    -   others
    -   all

-   setuid & setgid

    -   This means that any file or directory can be accessed by any user as if 
    they had the permissions of the owner or group owner.

-   `chmod 2755`: set the SUID

        -rwxr-sr-x

-   `chmod 1xxx filename`: Set the Sticky-Bit

    -   Denoted by a "t" in the "others" permissions info
    -   Usually set on directories that are "world" write able.
    -   Prevents a user from removing a file that they do not own inspite of the 
    permissions that are set.

        drwx---r--T

-   `chmod 3xxx filename`: set both the sticky bit(T or t) and the SUID (S or
s)

        -rwxr-sr-t

-   `chmod 4xxx filename`: set SGID

        --sr-xr-x

-   `chmod 5xxx filename`: set both the sticky bit and the SGID

        dr-Sr-x-r-T

-   `chmod 6xxx filename`: set both SUID and SGID

        dr-sr-Sr--

-   `chmod 7xxx filename`: set all extra bits

        -rwS--s--T

-   `chmod 0xxx filname`: _remove_ any extra bits that are set

-   `lsattr`: show special attributes if they exist

-   `chattr +- [attribute] [filename]`

    **NOTE**: c, s, and u are not honored by ext2, ext3, and ext4 FS

    -   u: if deleted the file contents are saved allowing the user to ask for
    the files undeletion.
    -   i: immutable: cannot delete, modify, or rename a file , even as root
    -   a: append mode

        `vim 0_APPEND [filename]`: open in append mode `less 0_APPEND
        [filename]`

    -   A: if the file is accessed, the atime record is not altered
    -   c: compress the file by default
    -   h: file is storing its blocks in the units of the filesystem block size
    instead of unit sectors, and this means that the file is (was) larger that
    2TB. Cannot be set or unset by **chattr** but can be listed by **lsattr**
    -   j: file data is written to **ext3** and **ext4** journal before being
    written to the file, if the FS is mounted with the "data=ordered" or
    "data=writeback" options.  **NOTE**: If FS is mounted with the
    "data=journal" option all data is journaled anyway ### Transfer Files
    Securely

For ssh setup see <a
href="https://github.com/captam3rica/gitMyNotes/blob/master/Linux/generating-ssh-keys.md"
target="external" titl="ienerating SSH Keys">generating-shh-keys</a>

#### SCP

-   scp file-to-copy user@hostname:/location/to/copy/to
-   scp user@hostname:/location/to/pull/file/from /location/to/pull/file/to

#### SFTP

-   Able to view and see the remote file system before transferring files
-   Look for sftp in /etc/ssh/sshd_config
-   sftp user@hostname \\\[press enter]. Then, enter password
-   get filename /dir/to/put/file
-   lcd - local change directory

### Monitoring Security & Conduct Audits

-   top

-   htop (install after the fact)

#### free: see memory utilzation

-   cache aka paging: used to speedup i/o if memory space allows

#### df: disk space usage

    -   df -hTi: check inodes - file system reference

        -   Can find and delete empty inodes

#### du: disk utilization

-   du -sch /dir/\*: summary of space utilized

#### ps : process management

> The use of BSD-style options will add process state **(stat=STAT)** to the
> default display and show the comma nd args **(args=COMMAND)** instead of the
> executable name. You can override this with the PS_FORMAT environment
> variable. The use of BSD-style options will also change the process selection
> to **include processes on other terminals (TTYs) that are owned by you**;
> alternately, this may be described as setting the selection to be the set of
> all processes filtered to exclude processes owned by other users or not on a
> terminal.

-   ps -e: list all processes (same as -A)

-   ps -ef: every process, full format listing
-   ps -ef | grep -i \[search] | grep -v \[what you want to omit]
-   ps -axjf: running processes in a tree view (similar to ps -ejH)
-   ps -eLf: see thread information
-   ps -U \[username] -u \[username] u: see all process owned by a user
-   ps -aux: see all process regarless of user
-   ps aux: see all processes (BSD style)
-   ps au: list all process belonging to a terminal regardless of user (will
list username)
-   ps t \[tty#]: select based on tty#
-   ps -d: select all but session leaders
-   ps r: select only the **running** processes
-   ps -p \[pid]: select based on process id (same as p & --pid, also -\[pid #]
ie -1234)

#### log files

-   dmesg: print or control kernel ring buffer

-   journalctl: query the systemd journal

## Operating on Running Systems

### Process Priority & Resource Utilization

-   pgrep: find a process id for a process

-   kill \[options] \[pid]

    -   kill -KILL: another way to send a kill signal. Given to the OS to
    shutdown the process instead of directly to the process. (same as -9)
    -   kill -SIGHUP: hangup the process


-   nice: run process with modified scheduling priority

    -   nice -n \[priority -20 to 20]


-   renice -n \[priority] -g|-p|-u \[id-of-process]: alter the priority of an
already running process

### Manage Startup Process and Services

#### upstart: Debian and Ubuntu lt 14.04

-   /etc/init/: process configuration files

-   echo "manual" | tee /etc/init/\[service-name].override: this will put a
process in a "stopped" or "waiting" state on boot as long as this file is in
place. The name must be exactly as the service name.

-   status \[process-name]

#### systemd: Ubuntu 14.04 up, RHEL, CentOS, Arch, Fedora ...

-   Ubuntu

    -   /etc/init
    -   systemctl 16.04

-   CentOS

    -   /etc/rc.d
    -   /etc/rc.d/init.d: All of the runlevels

-   /etc/systemd/system: service runlevel targets

-   \--now: when used with "enable", will start the process as well

-   set-default graphical.target: make the graphical interface the default
target

-   isolate graphical.target: this will cause the graphical interface to start
immediately

#### Power Management 

`$ systemctl reboot`  
`$ systemctl poweroff`  
`$ systemctl suspend`  
`$ systemctl hibernate`  
`$ systemctl hybrid-sleep`  

### Package Management (Debian/Ubuntu)

**NOTE**: If you are a regular user remember to use _sudo_ in front of these
commands.

Information regarding the .deb repo source list can be found
[HERE](https://manpages.debian.org/stretch/apt/sources.list.5.en.html)

-   /etc/apt/sources.list: list of repos

All of the **APTs** man pages can be found
[HERE](https://manpages.debian.org/stretch/apt/index.html)

#### apt - man page
[HERE](https://manpages.debian.org/stretch/apt/apt.8.en.html)

-   `apt list --installed`:

    Show a list of installed packages.

#### apt-cache

[man apt-cache](https://manpages.debian.org/stretch/apt/apt-cache.8.en.html)

-   `apt-cache pkgnames`: See a list of packages that **APT** knows about.

-   `apt-cache show \[package-name]`: information about a package

-   `apt-cache stats`: information about packages in the cache

-   `apt-cache depends \[package-name]`: show a list of deps for a particular
package and the packages that could fulfill those deps.

    -   `apt-cache depends --installed \[package-name]`: limit the output to
    deps that are currently installed.

#### apt-get

[man apt-get](https://manpages.debian.org/stretch/apt/apt-get.8.en.html "Manual
pages for apt-get")

-   `apt-get clean`: clean up the apt cache

    -   /var/cache/apt/archives/ and /var/cache/apt/archives/partial/

-   `apt-get autoclean`: clean any partial  package

    -   /var/cache/apt/archives and /var/cache/apt/archives/partial/

    Like clean, autoclean clears out the local repository of retrieved package
    files. The difference is that it only removes package files that can no
    longer be downloaded, and are largely useless

-   `apt-get update && apt-get upgrade`: to update and install package updates

-   `apt-get dist-upgrade`: upgrade the distro

    -   will determine which packages are compatible or which are not

-   `apt-get autoremove`:

    autoremove is used to remove packages that were automatically installed to
    satisfy dependencies for other packages and are now no longer needed.

-   `apt-get remove \[package name]`: will remove the package, but not fully

    -   `apt-get remove --purge \[package-name]`: Completely delete package

    -   `apt-get remove --autoremove \[package-name]`:

        Like **autoremove**, will uninstall unused deps associated with a given
        package.

-   `apt-get --download-only \[package name] or apt-get download \[package
name]`

    -   Will download to the pwd
    -   Make sure that all deps are there (the distro will tell what is needed)
    -   `dpkg -i \[depfile.deb]`

-   `apt-get --reinstall \[package-name]`: attempt to reinstall a package

-   `apt-get changelog \[packag name]`

-   `apt-get check`: let us know which deps may be broken

    -   `apt-get build-dep \[package name]`: grab and build deps packages for a
    give package

#### dpkg - install **.deb** packages

The following commands will only work on locally installed packages and files.

-   `dpkg -l`: list the installed packages

-   `dpkg -L (--listfiles) [package names]`:

    List all of the files and dirs created after a packages is installed.

-   `dpkg -S (--search) [packagename.version]`:

    Search for a filename from installed packages 
    
#### apt-file

**apt-file** is a software package that indexes the contents of packages in
your available repositories and allows you to search for a particular file
among all available packages. (ABSOLUTELY EVERYTHING!!!!!!!!!!!)

Before using **apt-file** it must be installed & the DB updated

      apt-get install apt-file apt-file update

-   `apt-file search \[filename or packagename]`

#### aptitude is a fronted for dpkg. Similar to ncurses

### Package Management (CentOS & RHEL)

[Tips & Tricks](https://wiki.centos.org/TipsAndTricks/YumAndRPM)

#### yum (yellow dog updater) - from Yellow Dog Linux

Yum cheat sheet [here](/gitMyNotes/Linux/rhel_yum_cheatsheet.pdf)

[man yum](https://www.unix.com/man-page/centos/8/yum/)

-   `yum check-update && yum update`

-   **`yum list | grep [package]`**

    Is  used  to  list  various  information  about available packages, package
    groups, and repos.

    **NOTE**: Can use wildcards (globs), or pipe to grep, to find all packages
    containing a particular name.

    -   `yum search [packagename]`: same as above _list_ command. (Name and
    summary matches only)
    -   `yum search all [package]`: find all results containing the package
    name.
    -   `yum list all`: list all installed and available packages
    -   `yum list installed`: list out all installed packages
    -   `yum list available`: list all available packages in all enabled repos
    -   `yum provides [filename or packagename]`: look for a package that
    provides a specific file or feature.

-   **`yum grouplist`**: see a list of group packages

    -   `yum groupinstall ['group name']`
    -   `yum groupupdate`
    -   `yum groupremove ['group name']`

-   **`yum repolist`**

    -   `yum repolist all`
    -   `yum --enablerepo=\[repo-name] install \[package-name]`

-   **`yum info [package]`**

    To lookup information about one or packages (wildcards welcome aka globs)

    -   `yumdb info [packagname]`: query the yum db for alternate info.

-   **`repoquery --list [packagename]`**

    List the contents of a particular package.

    -   `rpm -ql [package]`: same as above _repoquery --list_ command, but only
    for installed packages

-   **`yum install`**

    -   `yum install --downloadonly --downloaddir=\[/dir/path/] \[package]`:

        download but do not install and put in the specified directory.

    -   `yum localinstall [local-rpm-package]`: install a local package

    -   `yum install yum-utils`: extra utilities revolving around yum

        -   `yumdownloader [package]`: to get the .rpm only
        -   `needs-restarting`:

            see which recently updated processes that need to be restarted.

-   `yum updateinfo [category]`: get info about available updates

    -   you udateinfo security: get info about security updates.

-   `yum update-to [package-version]`: update to a particular package version

-   `yum downgrade [package-version]`: downgrade a package to a previous
version

-   `yum clean all`: removes ... plugins, rpmdb, dbcache, metadata, headers,
packages, expire-cache

    -   `Yum clean packages`: clean up cached packages

-   `yum history`

-   **`yum remove [package-name]`**:

    will only remove the specified package. It will not remove the deps.

    -   `yum erase [package]`: does the same as "yum remove"
    -   `yum autoremove [package]`:

        same as "remove" plus gets rid of unneeded packages (RHEL7)

    -   `yum remove @groupname` or `yum groupremove [groupname]`

        > When you tell yum to remove a package group, it will remove every
        > package in that group, even if those packages are members of other
        > package groups or dependencies of other installed packages. However,
        > you can instruct yum to remove only those packages which are not
        > required by any other packages or groups by adding the
        > `groupremove_leaf_only=1` directive to the \[main] section of the
        > _/etc/yum.conf_ configuration file. For more information on this
        > directive, see Section 8.4.1, “Setting \[main] Options”.

#### rpm (RedHat Package Manager)

-   rpm -ivh

-   rpm -Uvh: if the package exists, upgrade it. Otherwise, install it.

-   rpm2cpio \[package-and-version] | cpio -ivd /download/location: extract a
file from a package

    -   cpio: copy files to and from archives

-   rpm _will not_ install deps for a particular package

    -   can use **yum** to get deps
    -   `yum install \[package]`
    -   `yum remove \[package`
    -   yum should have only removed the specified \[package] and left the deps
    behind to be utilized by rpm or saved for later.

-   rpm -q --changelog \[package] | less: see the change logs for a package

-   rpm -q \[package]: search to see if a particular package is installed and
the version

-   rpm -ql \[package]: will query and list the files and folders associated
with a given package (no sudo required)

-   rpm -qa --last: will show the packages that were last installed or upgraded

    -   rmp -qa: will show everything

-   rpm -evv \[package]: to remove individual package files.

-   rpm -qd \[package]: list documentation file locations for a package

    -   rpm -qdf \[/path/to/file]: list documentation containing a \[filename].

-   rpm -Va: verify rpm packages

-   rpm --import: to import keys

-   rpm --qa  gpg-pubkey\*: to show the gpg-public keys that have been imported

-   If receive a message stating that the **rpm** db has been corrupted, do the
following ...

    -   remove offending dbs
    -   `rpm --rebuilddb`: rebuild the rpm DB

## User & Group Management

### Create, Delete, and Modify Local User Accounts

-   `useradd [username]`: add a user

    -   useradd -m -d /home/\[username] -s /bin/bash -c "Full Name of User"
    \[username]

-   adduser \[username]: works in newer OSs

    -   Gives more info about the user being created

    **NOTE**: Nolonger included in Arch Linux

-   userdel \[username]: will not delete the home dir of the user

-   userdel -r \[username]: This will remove the user and the user's home dir

-   Defaults for `useradd` can be found: `/etc/defaults/useradd`

-   chage -d 0 \[username]: force the user to change their password on next
login

### Create, Delete, and Modify Local Groups

-   groupadd \[group-name]

-   Can edit the `/etc/group` file directly.

-   gpasswd \[group-name]: to edit the password for a group

-   newgrp \[group-name]: to set permissions to a new group.

    -   There will be a password

-   chgrp \[group-name] \[filename]: to change the group ownership for a file

### Use sudo to Access the root Account

-   visudo: This will check syntax to make sure that nothing has been done that
will prevent system login.

-   sudo su -: From a logging perspective, this is the best way to become the
root user.

-   Edit the `/etc/group` file directly and add the user to the _sudo_ group.

### Managing User Accounts 

-   /etc/passwd: users are listed here 
-   /etc/shadow: encrypted passwords if they are set
-   /etc/skel (skeleton): files that populate in a new user's profile
-   /etc/profile: place to put things that all user's will get access to when
they login

#### Manually add users

-   vipw: used to manually edit the /etc/passwd file 

-   vigr: manually edit the /etc/group file

-   copy the info from /etc/skel to the new user's directory

-   Change home directory ownership to the new user 

-   Update the password for the new user 
    
    -   `passwd [username]`
    -   `chage -d 0 [username]`: force the user to change their password at
    next login

## Networking 

### Implementing Packet Filtering

-   `iptables -L`: list current rules 

-   `iptables -P FORWARD DROP`: change forwarding rule to drop

-   `iptables --flush [chain]`: flush the selected chain. If none is given all
chains in the table will be flushed.

-   `iptables -A INPUT --protocol icmp --in-interface [interface-name] -j DROP`:
    This will drop any icmp packets and will not give any response

    -   `-j REJECT`: This will send back a message of host unreachable.

### Configuring Firewall Settings

**NOTE**: use `sudo` infront of these commands.

-   `firewalld`: CentOS 7 and RHEL 7

-   `iptables`: CentOS 6, RHEL 6, Ubuntu, Arch, Debian, etc

-   `/etc/sysconfig/iptables-config`:

    -   IP_TABLES_SAVE_ON_STOP
    -   IP_TABLES_SAVE_ON_RESTART

-   `iptables -A INPUT -p tcp -s 0/0 --sport 1024:65535 -d 0/0 --dport 80 -j
REJECT`

-   `iptables -A OUTPUT -p tcp --dport 80 --sport 1024:65532 -j REJECT`

-   `iptables-save > /etc/sysconfig/iptables`

-   `iptablse-restore < /etc/sysconfig/iptables`

### Configure Network Services to Start on Boot - systemd

-  `ss -tuna`: 

    -   n: numeric. do not resolve services names
    -   t: tcp
    -   u: udp
    -   a: both listening and non-listening
    -   l: only listening 

### Configure Net Services to start at boot - sysvinit

-   RHEL 5 or 6 & CentOS 5 or 6
-   `chkconfig`: check service configurations 
-   `chkconfig [service-name] on`: turn the service on
-   `service [service-name] start`: start the service

### Monitor Network Performance

-   Socket Statistics 

-   `ss -t -a`: list all tcp connections open and closed.

-   `ss -t -o`: list by connection time

-   `ss -t -n sport= :22`:  list listening TCP ports and do not resolve service names.

-   `nmap -A -sS localhost`: aggressive, tcp syn scan on localhost. Will not show up in the target computer's logs

-   `iptraf`: look at what is happening on your system.

-   `dstat`: see system resource utilization in real time 

    -   `--battery`
    -   `--battery-remain`
    -   `--disk-util`

### Statically Route IP Address Traffic

-   `ip route show`: show the ip address routes

-   `ip route add [ip address or subnet range] via [chosen gateway address] dev [device-name]`

-   `ip route delete [ip address or range]`

-   `route add -net 172.17.0.0 netmask 255.255.255.0 gw 192.168.1.131 dev [device-name]` -- **deprecated command**

### Dynamically Routing IP Address Traffic

-   Turn your system into a dynamic router (smart router)

#### `quagga` (fork or the defunked Zebra package)

-   `/etc/quagga/`

-   daemons file
    zebra=1
    ripd=1

-   zebra.conf  
    service quagga restart   
    hostname [your hostname]   
    password [enter a password]   

-   ripd.conf
    add the same configs from abov   

-   restart the quagga service 
-   chmod on the config files `quagga:quaggaavty`

**quagga config**

```
ssh localhost:2601 
password: [enter password from config file]
> enable
password: [enter password from config file]
configure terminal
(config)# inter [interface name]
(config-if)# ip addr [ip address for router]/24
(config-if)# exit
(config-if)# write
(config)# quit
exit
```
**ripd config**

```
ssh localhost:2602
password:
> enable
# configure terminal
(config)# router rip
(config-router)# version 2
(config-router)# network [ip address]/24
(config-router)# exit
(config)# write
(config)# exit
exit
```

**client config**

-   `ip route add default via [ip of router(server)]`: tell the client to use
    the newly configured server as the the default gateway. 

-   `ip route show`: to confirm configs are applied





