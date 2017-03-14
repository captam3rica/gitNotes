#!/usr/bin/python

# Display and add network printers to user's computer through a
# GUI interface.

# Replaces Install Network Printer Apple script

import sys
import cups
from Foundation import CFPreferencesCopyAppValue
from Tkinter import *

BUNDLE_ID = 'edu.kennesaw.uits.addnetworkprinter'


def findPPD(c, printer):
    # Determine printer model

    model = printer['printer-make-and-model']
    # search through and find driver names
    # Drivers names are usually no shorter than 9 chars
    while len(model) >= 9:
        try:
            ppds = c.getPPDs(ppd_make_and_model=model)
        except cups.IPPError:
            model = model[0:-1]
        else:
            if len(ppds) == 1:
                return pdds.keys()[0]
            else:
                # Check to see if any of the models match the original name
                # exactly
                for ppd, meta in ppds.iteritems():
                    # Added by captam3rica
                    printer_metamakemodel = meta['ppd-make-and-model']
                    printer_namemakemodel = printer['printer-make-and-model']

                    if printer_metamakemodel == printer_namemakemodel:
                        return ppd
                    else:
                        return None
    return None

if __name__ == '__main__':
    if len(sys.argv) == 2:
        server = sys.argv[1]
        interactive = True
    elif ((CFPreferencesCopyAppValue('server', BUNDLE_ID) is None) or
          (CFPreferencesCopyAppValue('username', BUNDLE_ID) is None) or
          (CFPreferencesCopyAppValue('password', BUNDLE_ID) is None)):
        print """ Usage: {program} hostname

To run in non-interactive mode, {program} requires the following
preferences to be defined in the {domain} domain:
    server - The hostnmae of your CUPS server.
    username - A user on the local machine who can use the CUPS
    we administration interface.
    password - The user's password

The easiest way to create this is to run the follwing commands as
root:
    defaults write {domain} server hostname
    defaults write {domain} username administrator
    defaults write {domain} password xxxx

This will create /var/root/Library/Preferences/{domain}.plist
        """.format(program=sys.argv[0], domain=BUNDLE_ID)
        sys.exit(1)
    else:
        server = CFPreferencesCopyAppValue('server', BUNDLE_ID)
        username = CFPreferencesCopyAppValue('username', BUNDLE_ID)
        password = CFPreferencesCopyAppValue('password', BUNDLE_ID)
        interactive = False

    cups.setServer(server)

    try:
        rc = cups.Connection()
    except RuntimeError, e:
        print e
        sys.exit(2)
    try:
        printers = rc.getPrinters()
    except cups.IPPError, (code, msg):
        print "Error retrieving printer list: {}".format(msg)
        sys.exit(3)

    cups.setServer("/private/var/run/cupsd")
    if not interactive:
        cups.setUser(username)
        cups.setPasswordCB(lambda x: password)

    lc = cups.Connection()

    for p in printers.keys():
        try:
            ppd = findPPD(lc, printers[p])
            if ppd is not None:
                lc.addPrinter(p,
                              device=printers[p]['printer-uri-supported'],
                              location=printers[p]['printer-location'],
                              info=printers[p]['printer-info'],
                              ppdname=ppd)
            else:
                lc.addPrinter(p,
                              device=printers[p]['printer-uri-supported'],
                              location=printers[p]['printer-location'],
                              info=printers[p]['printer-info'])
            lc.setPrinterShared(p, False)
            lc.enablePrinter(p)
            lc.acceptJobs(p)
        except cups.IPPError, (code, msg):
            print "Could not add/modify printer {}: {}".format(p, msg)
            sys.exit(code)
