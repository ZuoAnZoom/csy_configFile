#!/usr/bin/env python
# coding=utf-8

import numpy as np
import matplotlib.pyplot as plt
import mpl_toolkits.mplot3d

f1 = open("./truth_result.txt")
x1 = []
y1 = []
z1 = []
for line in f1:
    if line[0] == '#':
        continue
    data = line.split()
    x1.append( float(data[1] ) )
    y1.append( float(data[2] ) )
    z1.append( float(data[3] ) )

f2 = open("./esti_result.txt")
x2 = []
y2 = []
z2 = []
for line in f2:
    if line[0] == '#':
        continue
    data = line.split()
    x2.append( float(data[1] ) )
    y2.append( float(data[2] ) )
    z2.append( float(data[3] ) )

f3 = open("./groundtruth.txt")
x3 = []
y3 = []
z3 = []
for line in f3:
    if line[0] == '#':
        continue
    data = line.split()
    x3.append( float(data[1] ) )
    y3.append( float(data[2] ) )
    z3.append( float(data[3] ) )

ax = plt.subplot( 111, projection='3d')
ax.plot(x1,y1,z1)
ax.plot(x2,y2,z2)
ax.plot(x3,y3,z3)
plt.show()
