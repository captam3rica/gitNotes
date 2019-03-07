# All of the Binary File Directories


1. Directory structure

This should be covered in the Filesystem Hierarchy Standard (2.3 PDF)

/bin/       Essential command binaries that need to be available in single user mode;
            for all users, e.g., cat, ls, cp

/sbin/      Essential system binaries, e.g., init, ip, mount.

/usr/bin/   Non-essential command binaries (not needed in single user mode);
            for all users

/usr/sbin/  Non-essential system binaries, e.g. daemons for various network-services.

/usr/local/ Tertiary hierarchy for local data, specific to this host.
            Typically has further subdirectories, e.g., bin/, lib/, share/
