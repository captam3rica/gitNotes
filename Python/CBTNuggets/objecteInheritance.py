#!/usr/bin/python

import math


# Base class (inherited class)
class Shape(object):
    def __init__(self):
        self.color = "Red"
        self.sides = 0

    def calc_area(self):
        return 0


# Quadralateral class that inherits from Shape
class Quadralateral(Shape):
    def __init__(self, w, l, c):
        self.sides = 4
        self.width = w
        self.length = l
        self.color = c

    # Calculate Area of Quadralateral
    def calc_area(self):
        return self.width * self.length

    def calc_perimeter(self):
        return 2 * (self.width + self.length)


# Square class
# Inherits from Shape and Quadralateral
class Square(Quadralateral):
    # Method overriding
    def __init__(self, w, c):
        # Calling the base class Quadralateral
        super(Square, self).__init__(w, w, c)


class Cirlce(Shape):
    # Method overriding
    def __init__(self, r, c):
        # Calling the base class Shape
        super(Cirlce, self).__init__()
        self.radius = r
        self.color = c

    # Calculate Area of Cirlce
    def calc_area(self):
        return math.pi * (self.radius ** 2)


# Rectangle class
class Rectangle(Quadralateral):
    def __init__(self, l, w, c):
        super(Rectangle, self).__init__(l, w, c)


# Triangle class
class Triangle(Shape):
    def __init__(self, s1, s2, s3, c):
        super(Triangle, self).__init__()
        self.s1 = s1
        self.s2 = s2
        self.s3 = s3
        self.color = c


def printArea(s):
    print "Area:", s.calc_area()

# Doing things below
###################################################################

square1 = Square(3, "Orange")
square2 = Square(9, "Purple")

rectangle1 = Rectangle(6, 10, "Yellow")

cirlce1 = Cirlce(6, "Green")

triangle1 = Triangle(3, 3, 3, "Blue")

print "Square Sizes:", square1.width, "x", square1.length, \
            square1.color, ",", square2.width, "x", \
            square2.length, square2.color
print "Area:", square1.calc_area()
print "Perimeter:", square1.calc_perimeter()
print "Rectangle:", rectangle1.calc_area()
print "Circle:", cirlce1.radius
print "Circle Color:", cirlce1.color
print "Area:", cirlce1.calc_area()
print "Triangle Color:", triangle1.color
printArea(triangle1)
