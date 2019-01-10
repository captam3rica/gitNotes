#!/usr/bin/python

# Print a list of the printers on the print server

import cups
import smb
import csv

cupsconn = cups.Connection()
# SMBCONNECTION = smb
cupsprinters = cupsconn.getPrinters()
netprinters = cupsconn.adminGetServerSettings()
drivers = cupsconn.getPPDs(limit=0)
# SMBPRINTERS = SMBCONNECTION.
# printTestPage(name)
# addPrinter(name)

for printer in cupsprinters:
    print printer, cupsprinters[printer]["device-uri"]

print ""

driverList = []

for driver in drivers:
    driverList.append(driver)

with open('/Users/jwils156/Desktop/Queues.csv') as f:
    reader = csv.reader(f)
    for row in reader:
        print row

for driver in driverList:
    print driver

printername = raw_input("Enter printer name: ")

cups.Connection.addPrinter("PS01-", name=printername)
