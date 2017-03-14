#!/usr/bin/python

import math
import random
import os

from Tkinter import *

GREY = "grey"
GREEN = "green"
WHITE = "white"
BLACK = "black"

#
# Drawing the jitterplot


def jitterplot(canvas, bbox, data):
    "Draw a jitter plott"

    # get min, max, and average
    low, high = min(data), max(data)
    avg = sum(data)/float(len(data))
    variance = sum(map(lambda a, m=avg: (a-m)*(a-m), data))
    standdev = math.sqrt(variance / float(len(data)-1))

    # Calculate scale
    ystep = (bbox[1] - bbox[3]) / (high - low)
    ybase = bbox[3]

    x = (bbox[2] + bbox[0]) / 2

    y0 = low * ystep + ybase
    y1 = high * ystep + ybase
    standdev = standdev * ystep

    # Draw "cloud"
    y = (y0 + y1) / 2
    canvas.create_oval(x - standdev, y0, x + standdev, y1, fill=GREY,
                       outline="")
    canvas.create_oval(x - standdev, y - standdev, x + standdev, y + standdev,
                       fill=WHITE, outline="")

    # Draw min/max and average bars
    y = avg * ystep + ybase
    w = 10
    canvas.create_line(x - w, y, x + w, y, fill=BLACK, width=3)
    canvas.create_line(x, y0, x, y1, fill=BLACK, width=3)
    canvas.create_line(x - w, y0, x + w, y0, fill=BLACK, width=3)
    canvas.create_line(x - w, y1, x + w, y1, fill=BLACK, width=3)

    # Draw markers
    for y in map(lambda y, ys=ystep, yb=ybase: y * ys + yb, data):
        j = x + (y1 - y0) * 0.1 * (random.random() - 0.5)
        canvas.create_oval(j - 2, y - 2, j + 2, y + 2, fill=WHITE)

#######################################################################
# Creating some random data

data = map(lambda a: random.random(), range(200))

# Create the drawing canvas

root = Tk()

Label(text="Jitter Plot Example").pack()
canv = Canvas(root, height=500, width=500, bg=WHITE)
canv.pack()

# A few commands


def printcavas():
    os.popen("lpr", "w").write(canv.postscript())

Button(text="Dismiss", command=root.quit).pack(side=LEFT)
Button(text="Print", command=printcavas).pack(side=RIGHT)

# draw the diagram

bbox = 20, 20, 480, 480

jitterplot(canv, bbox, data)

root.mainloop()
