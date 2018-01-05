import os
from math import *
import numpy as np

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm



x = y = np.linspace(-10., 10., 30)
xv, yv = np.meshgrid(x, y, indexing='ij', sparse=False)
zv = np.sqrt(xv**2+yv**2)


# Kjeglesnitt som er en sirkel

fig = plt.figure(1)
pv = 0*xv + 2
ax = fig.gca(projection='3d')
ax.plot_surface(xv, yv, zv, cmap=cm.coolwarm, rstride=1, cstride=1)
ax.plot_surface(xv, yv, pv, cmap=cm.coolwarm, rstride=1, cstride=1)
plt.axis('equal')


# Kjeglesnitt som er en ellipse

fig = plt.figure(2)
pv = 0.5*xv + 2
ax = fig.gca(projection='3d')
ax.plot_surface(xv, yv, zv, cmap=cm.coolwarm, rstride=1, cstride=1)
ax.plot_surface(xv, yv, pv, cmap=cm.coolwarm, rstride=1, cstride=1)
plt.axis('equal')

# Kjeglesnitt som er en parabel

fig = plt.figure(3)
pv = xv + 2
ax = fig.gca(projection='3d')
ax.plot_surface(xv, yv, zv, cmap=cm.coolwarm, rstride=1, cstride=1)
ax.plot_surface(xv, yv, pv, cmap=cm.coolwarm, rstride=1, cstride=1)
plt.axis('equal')

# Kjeglesnitt som er en hyperbel

fig = plt.figure(4)
pv = 1.5*xv + 2
ax = fig.gca(projection='3d')
ax.plot_surface(xv, yv, zv, cmap=cm.coolwarm, rstride=1, cstride=1)
ax.plot_surface(xv, yv, pv, cmap=cm.coolwarm, rstride=1, cstride=1)
plt.axis('equal')

plt.show()