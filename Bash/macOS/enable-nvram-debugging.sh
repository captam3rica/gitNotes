#!/bin/sh

###############################################################################

# This is a combination of kernel debugging features that will show you extra
# information about the kernel's processes, which can be exceptionally useful
# if a system is experiencing kernel panics. Another option is to use
# debug=0x14e, which will display even more logging options. The primary use
# for this is that it enables old-style kernel panics that show scrolled text
# on the screen about why the system panicked, instead of displaying the gray
# backdrop and the message to merely restart your system. Alternative debug
# options are the following, though these will likely only be useful to kernel
# programmers:

#      0x01 - Stop at boot time and wait for the debugger to attach
#      0x02 - Send kernel debugging output to the console
#      0x04 - Drop into debugger on a nonmaskable interrupt
#      0x08 - Send kernel debugging information to a serial port
#      0x10 - Make ddb the default debugger
#      0x20 - Output diagnostics information to the system log
#      0x40 - Allow the debugger to ARP and route
#      0x80 - Support old versions of gdb on newer systems
#      0x100 - Disable the graphical panic dialog screen

###############################################################################

#
sudo nvram boot-args="debug=0x14e"
