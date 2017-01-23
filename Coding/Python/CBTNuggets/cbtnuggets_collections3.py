#!/usr/bin/env python

"""
Collections Continued ...
   - Dictionaries
   - index and key
"""

AGES = {"Ben": 35, "Joe": 37, "Sally":22, "Jeff": 18}

X = AGES.keys()
print X[2]

for age in AGES:
    print "The age of ", age, "is", AGES[age]
