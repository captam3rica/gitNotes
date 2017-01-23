#!/usr/bin/env python

"""
defining functions
- variable scope variables are referenced differently within a function
- function definitions in matt.py
"""

import matt

BASE = int(raw_input('Please enter the base value: '))
EXPONENT = int(raw_input('Please enter the exponent value: '))
matt.exp(BASE, EXPONENT)
