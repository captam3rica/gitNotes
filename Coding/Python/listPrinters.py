#!/usr/bin/python

# Print a list of the printers on the print server

import cups
import smb
import csv

cupsconn = cups.Connection()
# SMBCONNECTION = smb
cupsprinters = cupsconn.getPrinters()
netprinters = cupsconn.adminGetServerSettings()
drivers = cupsconn.getPPDs(limit=25)
# SMBPRINTERS = SMBCONNECTION.
# printTestPage(name)
# addPrinter(name)

for printer in cupsprinters:
    print printer, cupsprinters[printer]["device-uri"]

print ""

for driver in drivers:
    print driver

with open('/Users/jwils156/Desktop/Queues.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        print row

printername = raw_input("Enter printer name: ")

cups.Connection.addPrinter("PS01-", name=printername)
