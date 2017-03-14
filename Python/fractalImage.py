#!/usr/bin/python

# A simple fractals program by Kirby Urner
# --- modified to use Tk PhotoImage class rather than PIL

from Tkinter import *
import random


class Julia:
    def __init__(self, size, n=64, box=((-2, 1.25), (0.5, -1.25))):
        self.size = size
        self.n = n
        self.uleft = box[0]
        self.lright = box[1]
        self.xwidth = self.lright[0] - self.uleft[0]
        self.ywidth = self.uleft[1] - self.lright[1]

        self.im = PhotoImage(width=500, height=500)
        self.rgb = []
        self.make_colours()

    def __call__(self, z):
        self.z = z
        self.compute()

    def make_colours(self):
        for i in range(self.n):
            r = i*7 % 200 + 55
            g = i*9 % 200 + 55
            b = i*11 % 200 + 55
            colour = '#%02x%02x%02x' % (r, g, b)
            self.rgb.append(colour)

    def compute(self):
        print "Computing %s..." % self.__class__.__name__
        for x in range(self.size[0]):
            for y in range(self.size[1]):
                xp, yp = self.getcoords(x, y)
                dotcolor = self.fractal(xp, yp)
                self.im.put(dotcolor, to=(x, y))

    def fractal(self, x, y):
        n = self.n
        z = self.z
        o = complex(x, y)
        dotcolor = 0  # default, convergent
        for trials in range(n):
            if abs(o) <= 2.0:
                o = o**2 + z
            else:
                dotcolor = trials
                break  # diverged
        return self.rgb[dotcolor]

    def getcoords(self, x, y):
        percentx = x/float(self.size[0])
        percenty = y/float(self.size[1])
        xp = self.uleft[0] + percentx * (self.xwidth)
        yp = self.uleft[1] - percenty * (self.ywidth)
        return (xp, yp)


class Mandelbrot(Julia):
    def fractal(self, x, y):
        n = self.n
        z = complex(x, y)
        o = complex(0, 0)
        dotcolor = 0  # default, convergent
        for trials in range(n):
            if abs(o) <= 2.0:
                o = o**2 + z
            else:
                dotcolor = trials
                break  # diverged
        return self.rgb[dotcolor]

root = Tk()
# f = Julia((500,500), n=128, box=((-1.2,1.2),(1.2,-1.2)) )
# or
f = Mandelbrot((500, 500))
f(complex(-0.74543, 0.11301))
f.compute()
l = Label(root, image=f.im)
l.pack()
root.title('%s' % (f.__class__.__name__))
Button(text="Dismiss", command=root.quit).pack(side=LEFT)
root.mainloop()
