#!/usr/bin/env python

"""
Input and output Functions
Paramaterizing the print function
Input from the keyboard
"""
# import _future_ import print_function
import os

print "Hello World!"

print "Hello", "World", "!"

cmp(5, 10)

# USERNAME = "Please enter your name", sys.argv[0]
USERNAME = raw_input('Please enter your name: ')
FINALNAME = USERNAME + "!"
print "Hello", FINALNAME

#########################################

USER = raw_input('Please enter your name: ')
MYAGE = raw_input('Please enter your age: ')

AGE = int(MYAGE)
FACTOR = 2
FINALAGE = AGE + FACTOR
MULTAGE = AGE * FACTOR
DIVAGE = float(AGE) / FACTOR

print "In", FACTOR, "years you will be", FINALAGE, "years old", USER
print "Your age multiplied by", FACTOR, "is", MULTAGE
print "Your age divided by", FACTOR, "is", DIVAGE

#########################################

CDDRIVERS = "/Library/Printers/PPDs/Contents/Resources/"
SEARCH = raw_input("What Driver would you like to find: ")

os.system("ls %s | grep --color %s" % (CDDRIVERS, SEARCH))

print CDDRIVERS

