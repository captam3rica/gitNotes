# OS X ACLs

*   File and Directory permissions: RWX

*   two primary ACL types are POSIX.1e ACLs and NFSv4 ACLs

*   As of OS X 10.4, Mac has support for NFSv4 if the HFS file system is
being used.

*   ACLs are made up of Access Control Entries (ACE)

*   Some of the capabilities that ACLs provide for files include read, write,
execute, and append permissions (append only allows you to add to an existing
file, not change existing contents or remove it). Some capabilities for
directories include listing entries, searching entries, adding a file,
adding a sub-directory, or deleting contents. Another nice feature of ACLs
is called "inheritance," where you can set an inheritance permission so
that a directory's file contents can inherit one set of ACLs, while
directories inherit another set.

## Commands

    $ ls -le

e:  to the see the access control list associated with the file, if present,
in long (-l) output

To add access to a directory or file
$ chmod +a "group_name allow permission(s)"

To remove access to a dir or file:
$ chmod -a "group_name allow permission(s)"

Note: Permissions should be comma delimited without spaces between

chmod man pages:
The symbolic mode is described by the following grammar:

           mode         ::= clause [, clause ...]
           clause       ::= [who ...] [action ...] action
           action       ::= op [perm ...]
           who          ::= a | u | g | o
           op           ::= + | - | =
           perm         ::= r | s | t | w | x | X | u | g | o

The who symbols "u", "g", and "o'' specify the user, group, and other
parts of the mode bits, respectively.  The who symbol "a'' is equivalent
to "ugo''.

The perm symbols represent the portions of the mode bits as follows:

           r       The read bits.
           s       The set-user-ID-on-execution and set-group-ID-on-execution
           bits.
           t       The sticky bit.
           w       The write bits.
           x       The execute/search bits.
           X       The execute/search bits if the file is a directory or any
           of the exe-
                   cute/search bits are set in the original (unmodified)
                   mode.  Operations
                   with the perm symbol ``X'' are only meaningful in
                   conjunction with the
                   op symbol ``+'', and are ignored in all other cases.
           u       The user permission bits in the original mode of the file.
           g       The group permission bits in the original mode of the
           file.
           o       The other permission bits in the original mode of the
           file.

## EXAMPLES OF VALID MODES

     644           make a file readable by anyone and writable by the owner only.

     go-w          deny write permission to group and others.

     =rw,+X        set the read and write permissions to the usual defaults, but retain
                   any execute permissions that are currently set.

     +X            make a directory or file searchable/executable by everyone if it is
                   already searchable/executable by anyone.

     755
     u=rwx,go=rx
     u=rwx,go=u-w  make a file readable/executable by everyone and writable by the owner
                   only.

     go=           clear all mode bits for group and others.

     g=u-w         set the group bits equal to the user bits, but clear the group write
                   bit.

## Example

Access granted via Finder "Get Info":

    $ /bin/ls -le
    total 288

    drwxr-xr-x+ 2 vdanen staff 68 Mar 11 22:30 New
    0: group:admin allow list,search,readattr,readextattr,readsecurity

    Same Access via Terminal Commands:
    % /bin/chmod +a "admin allow read,readattr,readextattr,readsecurity" New2

    % /bin/ls -le

    drwxr-xr-x+ 2 vdanen staff 68 Mar 11 23:06 New2
     0: group:admin allow list,readattr,readextattr,readsecurity

    % /bin/chmod +a "admin allow search" New2

    % /bin/ls -le

    drwxr-xr-x+ 2 vdanen staff 68 Mar 11 23:06 New2
     0: group:admin allow list,search,readattr,readextattr,readsecurity

Resources:

*  [techrepublic.com](http://www.techrepublic.com/blog/apple-in-the-enterprise/introduction-to-os-x-access-control-lists-acls/)
