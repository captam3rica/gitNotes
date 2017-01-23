#!/usr/bin/env python

"""
Collections:
    - Dictionaries continued
	- del: to remove a value from a dictionary
	- key: value
"""

AGES = {"Ben": 35, "Joe": 37, "Sally": 22, "Captain America": 27}
print AGES

NEWKEY = raw_input("please enter the key to change: ")
RAWNEWVAL = raw_input("Please enter the value to change: ")
NEWVAL = int(RAWNEWVAL)

AGES[NEWKEY] = NEWVAL
print AGES

NEWKEY = raw_input("Please enter a new key to add: ")
RAWNEWVAL = raw_input("Please enter a new value to add: ")
NEWVAL = int(RAWNEWVAL)

AGES[NEWKEY] = NEWVAL
print AGES

REMKEY = raw_input("Please enter a key to remove: ")

del AGES[REMKEY]
print AGES
