#!/usr/bin/env python

"""
Collections part 2: built-in funtions
.append
.remove
"""

NAMES = ["Ben", "Sally", "Captain America", "Matt Wilson", "Python"]
print NAMES

INPUT_NEWINDEX = raw_input('Please enter the index number to replace:')
NEWINDEX = int(INPUT_NEWINDEX)

NEWNAME = raw_input('Please enter name to put into the index:')

NAMES[NEWINDEX] = NEWNAME
print NAMES

NEWNAME = raw_input('Please enter the name to add to the list:')
NAMES.append(NEWNAME)
print NAMES

REMNAME = raw_input('Please enter the name to remove from the list:')
NAMES.remove(REMNAME)
print NAMES

# Input vs raw_input?
