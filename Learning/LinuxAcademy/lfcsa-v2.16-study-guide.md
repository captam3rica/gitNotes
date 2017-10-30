# Linux Foundation Certified Sys Admin (LFCSA v2.16)

-   Why would you want the `touch` command to "Not create a file"?

    -   Change time 
    -   Change modification date 
    -   Change access date 
    -   can use strings like '1 year from now'
    
-   vim

    -   Lookup shift+U
    -   Look up editing with split view (vim -O\[N\] or tabs vim -p\[N\])

-    cat
    
    -   combining text 

-   sed (stream editor)

    -   `sed 's/oldtext/newtext/g' \[textfile.txt\]`

-   `du -sch /some/dir`

    -   `c` or `--total` - total size 
    -   `s` - summarize
    -   `h` - human-readable

-   sort

    -   `-h` - human-readable numeric sort (ascending)
    -   -r: reverse order 
-   uniq

    -   `-c` - count the uniq number of occurences
    -   `-w [n]` - the first \[n\] characters in a line

-   fmt - format text
    
    -   fmt filename.txt > newfilename.txt

-   nl - number of lines in a file

-   cut
    
    -   cut -d 'delemiter' -f1 filename.txt
    -   -f1-n: this is the column number for the text input
    
-   Searching for files
    
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

