#!/usr/bin/env python

import sys

print(sys.version_info)

name = ""
while name != "your name":
    print('Please type your name here.')
    name = raw_input('type name: ')
print('Thank you!')
