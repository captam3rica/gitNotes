# Linux Foundation Certified Sys Admin (LFCSA v2.16) - Study Guide

Mon Nov  6 15:45:45 EST 2017


## Essentials 

### touch

-   Change time 
-   Change modification date 
-   Change access date 
-   can use strings like '1 year from now'


### sed (stream editor)

-   `sed 's/oldtext/newtext/g' \[textfile.txt\]`
-   sed -n "p" filename.txt
-   sed -n "1p" filename.txt
-   sed -n "4,7" filename.txt
-   sed -n "3+7p" filename.txt
-   sed -n "4~1" filename.txt
-   sed -n "1 ! p" filename.txt
-   sed 's/[[:regex:]]/{1, } filename.txt


### du

-   `du -sch /some/dir`
-   `c` or `--total`: total size 
-   `s`: summarize
-   `h`: human-readable


### sort

-   `-h`: human-readable numeric sort (ascending)
-   -r: reverse order 


###  uniq

-   `-c`: count the uniq number of occurences
-   `-w [n]` - the first \[n\] characters in a line
    
    
### fmt - format text
    
-   fmt filename.txt > newfilename.txt


### cut
    
-   cut -d 'delemiter' -f1 filename.txt
-   -f1-n: this is the column number for the text input
  

### Searching ...
    
#### find

-   search with the -name of the "file"
-   -iname: search ignoring case 
-   -not: search for every thing execept 
-   c: find character devices (dev)
-   -executable; -readable; writeable
-   -perm [mode]: files permissions are exactly (octal or symbolic) - ie 700, 644, etc.
-   -type l: for symbolic links 
-   -type f: file
-   -type d: directory
-   -d, -depth: process the contents of the directory before the directory itself
-   -maxdepth [level] or mindepth [level]
-   -size: find the size of files (less than or greater than)
        
    -   1M, 24000c, 1K, 1G

-   -group [group-name]: find files with a given group name
-   find  -atime -1:  access less than a day ago 
-   -mtime: modification time

Full Command Lines ...

-   find / -user syslog: all files owned by syslog
-   find / -perm 755: find all files with permissions 755
-   find / -type f -name "some-file.txt" -exec ls -lth {} \; - only look for files name "some-file.txt" then execute the "ls" command.
-   sudo find / -type f -name "myTesT.txt" -exec chmod 707 {} \; -exec ls -l {} \; - find the file named "myTesT.txt", change the permissions, then list the file with a long listing.


Fun fact

- The following command will  will you to look a each line individually until complete. I broke my shell doing this by accident ... :)

    -   sudo find / -type f -name "*.txt" -exec less {} \;

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
-   --exclude=filname.txt: put this at the end of the cammand to add exclusions.
-   -p: will preserve ownership and file permissions 
-   tar -tvf: look at the contents of the archive without unpacking 
-   tar -rvf file.tar file.txt or dir/file.txt: append a file to an archive. 
-   tar -zvcf exclusion.tar.gz mybkup/ --exclude 'mybkup/ssh': this will exclude the ssh directory within the mybkup directory


### File Attributes

-   -rw**s**-xr-x: the "s" signifies a setuid. The file can be executed against other users by the owner of the file, but all others can only execute the file on themselves..
-   setuid is used in a very limieted manor for system level users 
    
    -   chmod u+s

-   **setgid**: any user can access the directory with the permissions of the group owner

    -   Anything under the parent directory will also get the permissions of the group when the **setgid** option (chmod g+s)is specified on the group 
    -   Usually when members of a group need access to all files in a directory regarless of who owns the primary group 

- chmod 2755
- Sticky bits
    
    -   Denoted by a "t" in the permissions info
    -   Usually set on directories that a "world" write able. 
    -   Prevents a user from removing a file that they do not own inspite of the permissions that are set.

- lsattr: show special attributes if they exist
- chattr 
    -   i: immutable: cannot delete a file, even as root
    -   a: append mode


### Transfer Files Securely

For ssh setup see <a href="https://github.com/captam3rica/gitMyNotes/blob/master/Linux/generating-ssh-keys.md" target="external" titl="ienerating SSH Keys">generating-shh-keys</a>

#### SCP

-   scp file-to-copy user@hostname:/location/to/copy/to
-   scp user@hostname:/location/to/pull/file/from /location/to/pull/file/to


#### SFTP

-   Able to view and see the remote file system before transferring files 
-   Look for sftp in /etc/ssh/sshd_config
-   sftp user@hostname \[press enter\]. Then, enter password
-   get filename /dir/to/put/file
-   lcd - local change directory 
    

### Monitoring Security & Conduct Audits 

-   top
-   htop (install after the fact)
-   free: see memory utilzation
    
    -   cache aka paging: used to speedup i/o if memory space allows

-   df: disk space usage 
    
    -   df -hTi: check inodes - file system reference
    
        -   Can find and delete empty inodes 

-   du: disk utilization
        
    -   du -sch /dir/*: summary of space utilized 


- ps : process management 

    -   ps ef: every process, full format listing 
    -   ps -aux | grep -i \[search\] | grep -v \[what you want to omit\]
    -   ps -axjf: running processes in a tree view


-   log files 
    
    -   dmesg: print or control kernel ring buffer
    -   journalctl: query the systemd journal


## Operating on Running Systems

### Process Priority & Resource Utilization

-   pgrep: find a process id for a process

-   kill [options] [pid]

    -   kill -KILL: another way to send a kill signal. Given to the OS to shutdown the process instead of directly to the process. (same as -9)
    -   kill -HUP: hangup the process 


-   nice: run process with modified scheduling priority

    -   nice -n [priority -20 to 20]


-   renice -n [priority] -g|-p|-u [id-of-process]: alter the priority of an already running process


### Manage Startup Process and Services 

-   upstart: debian and Ubuntu < 14.04

    -   /etc/init/: process configuration files
    -   echo "manual" | tee /etc/init/[service-name].override: this will put a process in a "stopped" or "waiting" state on boot as long as this file is in place. The name must be exactly as the service name.
    -   status [process-name]


-   systemd: Ubuntu 14.04 up, RHEL, CentOS, Arch, Fedora ...

    -   Ubuntu

        -   /etc/init
        -   systemctl 16.04


    -   CentOS

        -   /etc/rc.d
        -   /etc/rc.d/init.d: All of the runlevels
    

    -   /etc/systemd/system: service runlevel targets
    -   --now: when used with "enable", will start the process as well


### Package Management (Debian/Ubuntu)

-   dpkg - .deb 

    -   dpkg -l: list the installed packages 
    -   dpkg -L [package names]: list all of the files and dirs created after a packages is installed
    

- apt-get
    
    -   apt-cache pkgnames: see installed packages 
    -   apt-cache search 
    -   apt-cache show [package-name]: information about a package
    -   apt-cache stats: information about packages in the cache
    -   apt-get autoclean: clean the package cache
        
        -   /var/cache/apt/archives: contain cached .deb files
      
    - /etc/apt/sources.list: list of repos
    -   apt-get update && apt-get upgrade: to upgrade
    -   apt-get dist-upgrade: upgrade the distro

        -   will determine which packages are compatible or which are not

    -   apt-get remove --purge [package-name]

        -   apt-get purge [package-name]: is an option, but not the best 

    -   apt-get download [package name]
        
        -   Will download to the pwd 
        -   Make sure that all deps are there (the distro will tell what is needed)
        -   dpkg -i [depfile.deb]

    -   apt-get changelog [packag name]
    -   apt-get check: let us know which deps may be broken

        -   apt-get build-dep [package name]: grab and build deps packages for a give package


-   aptitude is a fronted for dpkg. Similar to ncurses 


### Package Management (CentOS & RHEL)

-   yum (yellow dog updater) - from Yellow Dog Linux
    
    -   What should you do the first time you login to a newly installed system - yum check-update && yum update
    -   yum list [packag]: get version information and whether or not the package is accepting updates 
    -   yum search [package] and yum list | grep [package] are synonymous 
    -   yum info [package]
    -   yum-utils: extra utilities revolving around yum
        
        -   yumdownloader [package]: to get the .rpm only

    -   yum list | less: see a list of available packages in the yum db, the versions, and the repos that they belong to.
    -   yum list installed: see a list of locally installed packages 
    -   yum grouplist: see a list of group packages 
        
        -   yum groupinstall ['group name']
        -   yum groupupdate
        -   yum groupremove ['group name']

    -   yum repolist
        
        -   yum repolist all
        -   yum --enablerepo=[repo-name] install [package-name]

    -   yum clean all
    -   yum history
    -   yum remove [package-name]: will only remove the specified package. It will not remove the deps.


-   rpm (RedHat Package Manager)

    -   rpm -ivh
    -   rpm -Uvh: if the package exists, upgrade it. Otherwise, install it. 
    -   rpm *will not* install deps for a particular package
        
        -   can use **yum** to get deps
        -   `yum install [package]`
        -   `yum remove [package`
        -   yum should have only removed the specified [package] and left the deps behind to be utilized by rpm or saved for later. 

    -   rpm -q [package]: search to see if a particular package is installed and the version 
    -   rpm -ql [package]: will query and list the files and folders associated with a given package
    -   rpm -qa --last: will show the packages that were last installed or upgraded
    
        -   rmp -qa: will show everything 

    -   rpm -evv [package]: to remove individual package files.
    -   rpm -qdf [/dir/location/for/package/documentation/]: list locations for documentation that has the [package] name mentioned in it.
    -   rpm -Va: verify rpm packages 
    -   rpm --import: to import keys
    -   rpm --qa  gpg-pubkey*: to show the gpg-public keys that have been imported
    -   If receive a message stating that the **rpm** db has been corrupted, do the following ...

        -   `cd /var/lib`
        -   remove offending dbs 
        -   `rpm --rebuilddb`: rebuild the rpm DB


### Set File Permission & Ownership


### Shell Scripting

-   export PATH=$PATH:/your/scripts

```sh
while read HOST; do

    ping -c 3 $HOST

done < myhosts
```

```sh
for this in 1 2 3 4 5; do

    echo "This is line # $this"

done
```
