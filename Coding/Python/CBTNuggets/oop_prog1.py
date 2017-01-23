#!/usr/bin/env python

"""
Object oriented programming
"""

# Manipulated and pass code around to different parts of the program
# Reuse of code
# Proper code separation
# Good for modeling data
# Easy to read

# Data Types:
#   - Byte
#   - Byte Array
#
# Custom Date Type:
#   - newCircle (the new data type would be called a class)
#
# Function are passed a reference to themselves called "self"

import math
import random


# The circle class
class Circle(object):
    """Circle class"""
    """You can move this to a file, then import into the program at the top.
    Make sure that the file is in the same folder as the program calling it"""

    # this is a cunstructor function that is built in
    # This properly instantiated the object so that it is in a \
    # form that is understood
    # by the code

    def __init__(self, radius):
        if radius == 0:
            self.radius = random.uniform(1.1, 9.5)
        else:
            self.radius = radius

    def calc_circumference(self):
        """Function to calculate the circumference of a circle"""
        return math.pi * 2 * self.radius

    def calc_diameter(self):
        """Function to calculate the diameter of a cirle"""
        return self.radius * 2

    def calc_area(self):
        """Function to calculate the area of a circle"""
        return math.pi * (self.radius ** 2)

CIRCLES = []

for i in range(0, 10):
    c = Circle(2)  # Constructor Function
    CIRCLES.append(c)

for c in CIRCLES:
    print "Radius:", c.radius, \
        "Circumference:", c.calc_circumference(), \
        "Diameter:", c.calc_diameter(), \
        "Area:", c.calc_area()
