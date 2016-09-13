# Kernel Panics

## Questions to Ask

*   Was the computer starting up, shutting down, or performing a particular task
when the recurring kernel panic happened?

*   Is the kernel panic intermittent, or does it happen every time you do a
certain thing?

*   Does it occur only when a certain external device is connected, or a device
is connected to a certain port?

## Isolate Hardware or Software

1.  Start the Mac from Recovery or its install media. Note: If a kernel panic
still occurs, go to the "Hardware troubleshooting" section of this article.

2.  Open Disk Utility and use "Repair Disk" on Mac's internal hard drive (named
  Macintosh HD by default).

3.  Connect an external drive with at least 10 GB of free space. Note: Make
sure the external drive does not cause kernel panics and is the only device on
its  USB, FireWire, or Thunderbolt port. Connecting the external drive and its
cables to another Mac can help make sure the drive does not cause kernel panics.

4.  Install OS X on the external drive.

5.  Start up from the external drive.

6.  Install all software updates until Software Update reports your software is
up to date.

7.  Use the Apple applications on the external drive to surf the web, view
QuickTime movies, email, print, scan, and/or other activities. Continue using
the Mac for the amount of time it would usually take for the kernel panic to
occur.

8.  If a panic occurs, go to the "Hardware troubleshooting" section of this
article to further diagnose the issue.

9.  If a panic does not occur, go to the "Software troubleshooting" section of
this article to further diagnose the issue.

**Note:** If the drive needs to be reformatted due to a failed Disk Repair, make
sure to ask if the data needs to be recovered first.

## Hardware Troubleshooting

### Check Peripherals First

1.  Turn off your Mac.

2.  Disconnect all peripheral devices. If you have a desktop Mac, make sure all
you have connected is a display and Apple keyboard with Apple mouse or trackpad.

3.  Turn on your Mac.

4.  Use your Mac for the amount of time it would usually take for a kernel panic
to occur.

5.  If a kernel panic does occur: Proceed the next section to check the internal
RAM and third-party hardware.

6.  If a kernel panic does not occur: Power down the Mac and connect one
peripheral device at a time and test until a kernel panic occurs.

**Note:** A combination of peripherals may be the cause of a kernel panic.
Disconnect one peripheral at a time to see if it causes a kernel panic by
itself. If the kernel panic does not occur, continue to add peripherals until
you find the other  peripheral needed to cause the kernel panic.

### Check internal RAM and 3r-Party Hardware

1.  Turn off your Mac.  

2.  Reseat the Apple RAM, and remove third-party RAM and third-party internal
hardware.  If you do not have the Apple RAM that came with the system, reseat
the third-party RAM.

3.  Turn on your Mac.

4.  Use your Mac for the amount of time it would usually take for a kernel panic
to occur.

5.  If the kernel panic does not occur: The third-party RAM or internal
  third-party hardware may need to be replaced.
  If a kernel panic does occur:  Bring the Mac to a Genius at an Apple Store, or
  an Apple Authorized Service Provider for service and support. Be sure to ask
  that, if the drive needs reformatting or replacing, they contact you about  
  escalating your case to a special data recovery service. If you plan to visit
  an Apple Retail store, make a reservation at the Genius Bar by clicking
  [here](http://www.apple.com/retail/geniusbar/) (available in some countries
  only).

### Software Troubleshooting

- Start the Mac from Recovery or its install media that came with your Mac and reinstall OS X on your Mac.

- Start from the internal drive.
- Run Software Update and install all updates until Software Update reports
"Your software is up to date."

- Download and install any third-party software updates before reinstalling third-party software, especially drivers and kernel extensions.

**If the kernel panic issue continues, you will need to perform a clean install of OS X by follow these steps:**

- Start the Mac from Recovery or its install media that came with your Mac.

- Complete a disk image backup via Disk Utility of the internal drive to an
external drive with enough free space.

- Erase the internal drive using Disk Utility.

- Install OS X.

- Start from the internal drive.

- Run Software Update and install all updates until Software Update reports
"Your software is up to date."

- Re-install your third-party apps and copy your user data from the disk image backup you created in step 2.

**Note:** Avoid copying data from the /Library and /System directories on your
backup disk image.

#### Examples include

  **Virtualization software**

- Drivers for add-on third party display cards

- Anti-virus software

- Networking software (especially software which enables third party network
  devices)

- Add-on file system support software; for example, software that lets your
write to NTFS formatted media.

## Advanced Information

You can check kernel panic logs for more information. The kernel panic text is
added to the log after you restart the computer, assuming that you did not reset
PRAM (the kernel panic text is stored in PRAM until you restart). In Mac OS X
v10.6 or later, the logs are located in in /Library/Logs/DiagnosticReports.

Information that may aid developers in the investigation of a software issue may
be in the log. The information may also provide a clue as to what event may have
caused the kernel panic in the first place.

Understanding and Debugging Kernel Panics – This technote addresses kernel
panics: what they are, how to read panic logs and how to debug the code that
caused the panic.

Kernel Core Dumps – This technote explains how you can enable remote kernel core
dumps used to collect data about the kernel panic.

## Troubleshooting Steps

- Do a safe boot
- Update your software
- Update your firmware
- Check your disk
- Check peripherals
- Check your RAM

Resources:

- [MacWorld](http://www.macworld.com/article/2027201/how-to-troubleshoot-a-kernel-panic.html)
-  [Apple.com](https://support.apple.com/en-us/TS3742)
