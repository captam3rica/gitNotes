#!/usr/bin/env python

"""
Working with collections
Collections have builty in functions such as .append and .remove
"""

NAMES = ["Ben", "Sally", "Captain America"]

X = NAMES.index("Captain America")
print(X)

for index in range(0, len(NAMES)):
    	print NAMES[index], 'is found at index:', index

for name in NAMES:
		print name, 'is found at index:', NAMES.index(name)


