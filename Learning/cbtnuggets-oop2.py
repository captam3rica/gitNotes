#!/usr/bin/env python

import math
import random


# This is a class called Circle
class Circle():
    # Adding the constructor for the Cirlce class
    # Determine if radius equal zero
    def __init__(self, radius):
        if radius == 0:
            self.radius = random.uniform(1.1, 9.5)
        else:
            self.radius = radius

    # Added method calcCircumference
    def calcCircumference(self):
        return math.pi * 2 * self.radius

    # Diameter method
    def calcDiameter(self):
        return self.radius * 2

    # Area method/function
    def calcArea(self):
        return math.pi * (self.radius ** 2)


class Rectangle():
    # Square class
    def __init__(self, length, width):
        if length | width == 0:
            self.length = random.randint(1, 10)
            self.width = random.randint(1, 10)
        else:
            self.length = length
            self.width = width

    # Calculate Perimeter of a square
    def calcPerimeter(self):
        return 2 * (self.length + self.width)

    # Calculate area of a rectangle
    def calcArea(self):
        return self.length * self.width

circles = []
rectangles = []

for i in range(0, 10):
    newcircle = Circle(0)  # () is areference to the class constructor func
    newrectangle = Rectangle(0, 0)
    circles.append(newcircle)
    rectangles.append(newrectangle)
    # print (i)

for circle in circles:
    print("Radius:", circle.radius,
          "Circumference:", circle.calcCircumference(),
          "Area:", circle.calcArea(),
          "Diameter:", circle.calcDiameter())

for rectangle in rectangles:
    print("Length:", rectangle.length, "Width:", rectangle.width,
          "Perimeter:", rectangle.calcPerimeter(),
          "Area:", rectangle.calcArea(),
          'Square' if rectangle.length == rectangle.width else 'Rectangle')
