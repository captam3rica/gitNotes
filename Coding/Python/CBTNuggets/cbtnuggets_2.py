#!/usr/bin/python

"""
Assigning variable to variables
"""

USERNAME = 'captam3rica'
FULLNAME = 'Captain America'

print USERNAME
print FULLNAME

ALTNAME = USERNAME
INCORRECTNAME = 'FullName'

NEWNAME = USERNAME = FULLNAME
# Cant do this, assigning a variable to a String Literal
# NEWNAME = "USERNAME" = FULLNAME

print NEWNAME
print USERNAME

VARSTRING = "This is a string variable. It can ahve " \
		"any combination of letters, numbers, or " \
		"special characters."

VARINT = 32
VARLONG = 12345L #Long denoted by the "L" at the end
VARFLOAT = 1230.50
VARLIST = [1, 3, 5, 4, "Larry", "Moe", "Currly"]
VARTUPLE = (94, 5, 6.5, "Alex", "Steve", "Jim")
VARDICT = {'First': 'The first item in the dictionary',
           'Second': 'The second item in the dictionary'}
print VARINT
print VARLONG
print VARFLOAT
print VARLIST
print VARTUPLE
print VARDICT
