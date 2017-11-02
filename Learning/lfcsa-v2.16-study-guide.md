#Linux Foundation Certified Sys Admin (LFCSA v2.16)

## Essentials 

### touch

-   Change time 
-   Change modification date 
-   Change access date 
-   can use strings like '1 year from now'


### vim

-   Lookup shift+U
-   Look up editing with split view (vim -O\[N\] or tabs vim -p\[N\])

    
### cat
    
-   combining text 


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
-   `c` or `--total` - total size 
-   `s` - summarize
-   `h` - human-readable


### sort

-   `-h` - human-readable numeric sort (ascending)
-   -r: reverse order 


###  uniq

-   `-c` - count the uniq number of occurences
-   `-w [n]` - the first \[n\] characters in a line
    
    
### fmt - format text
    
-   fmt filename.txt > newfilename.txt


### nl 

- number of lines in a file


### cut
    
-   cut -d 'delemiter' -f1 filename.txt
-   -f1-n: this is the column number for the text input
  

### Searching for files
    
-   search with the -name of the "file"
-   -i: search ignoring case 
-   -not: search for every thing execept 
-   c: find character devices (dev)
-   -type l: for symbolic links 
-   -size: find the size of files (less than or greater than)
        
    -   1M, 24000c, 1K, 1G
    
-   find  -atime -1:  access less than a day ago 
-   -mtime: modification time
-   find / -user syslog: all files owned by syslog
-   find / -perm 755: find all files with permissions 755
-   locate 
        
    -   sudo updatedb 
    -   locate filename
    -   must know the exact name, including case, inorder to use locate. 


### Data Backups


#### tar & gzip
    
-   tar -cvf filename_back.tar filename.txt
-   gzip filename.tar.gz filename.tar
-   tar -zcvf filename_back_gzip.tar.gz filename.txt
-   tar -xzvf filename.tar.gz .
-   --exclude=filname.txt: put this at the end of the cammand to add exclusions.
-   -p: will preserve ownership and file permissions 


### File Attributes

-   -rw**s**-xr-x: the "s" signifies a setuid. The file can be executed against other users by the owner of the file, but all others can only execute the file on themselves..
-   setuid is used in a very limieted manor for system level users 
    
    -   chmod u+s

-   **setgid** - any user can access the directory with the permissions of the group owner

    -   Anything under the parent directory will also get the permissions of the group when the **setgid** option (chmod g+s)is specified on the group 
    -   Usually when members of a group need access to all files in a directory regarless of who owns the primary group 

- chmod 2755
- Sticky bits
    
    -   Denoted by a "t" in the permissions info
    -   Usually set on directories that a "world" write able. 
    -   Prevents a user from removing a file that they do not own inspite of the permissions that are set.

- lsattr - show special attributes if they exist
- chattr 
    -   i: immutable - cannot delete a file, even as root
    -   a: append mode


### Transfer Files Securely

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
-   free - see memory utilzation
    
    -   cache aka paging - used to speedup i/o if memory space allows

-   df - disk space usage 
    
    -   df -hTi - check inodes - file system reference
    
        -   Can find and delete empty inodes 

-   du - disk utilization
        
    -   du -sch /dir/* - summary of space utilized 

- ps - process management 

    -   ps ef - every process, full format listing 
    -   ps -aux | grep -i \[search\] | grep -v \[what you want to omit\]
    
-   log files 
    
    -   dmesg - print or control kernel ring buffer
   
    





