# Mac Notes | Stuff I've Learned  

*   OS X Server Hardening:

    *   See Note on ACLs

*   OS X has a version number and a build number. Each version of OS X can have
many different build numbers. For example, they may be a build specific for a
model of Mac.

*   Apple Filing Protocol:
[wikipedia](https://en.wikipedia.org/wiki/Apple_Filing_Protocol)

    *   Use to be called Apple Talk filing protocol. Offers file services to Mac
    OS X and original Mac OS. Apple also supports Server Message Block (SMB),
    Network File System (NFS), FTP, and WebDAV.

    *   AFP versions 3.0 and greater rely exclusively on TCP/IP (port 548 or 427) for establishing communication, supporting AppleTalk only as a
      service discovery protocol. The AFP 2.x family supports both TCP/IP (using
        Data Stream Interface) and AppleTalk for communication and service
        discovery. Many third-party AFP implementations use AFP 2.x, thereby
        supporting AppleTalk as a connection method. Still earlier versions rely
        exclusively on AppleTalk. For this reason, some older literature refers
        to AFP as "AppleTalk Filing Protocol". Other literature may refer to AFP
        as "AppleShare," the name of the Mac OS 9 (and earlier) AFP client.

*   /private

    *   In OS X certain root level directories are actually symbolic links
    (similar to aliases) to directories in /private. Examples are /cores, /etc,
    and /var which are respectively linked to /private/cores, /private/etc, and
    /private/var. /private also contains a directory of drivers for certain
    peripherals.

*   Hidden Files & Directories:
[WestWind](http://www.westwind.com/reference/OS-X/invisibles.html)
