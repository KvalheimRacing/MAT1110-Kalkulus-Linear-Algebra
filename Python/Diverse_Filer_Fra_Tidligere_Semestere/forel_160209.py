import os
from math import *
import numpy as np

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm

# Example 3.7.1

x = y = np.linspace(-1, 1, 50)
xv, yv = np.meshgrid(x,y, indexing='ij', sparse=False)
zv = xv**2 + 4*yv**2

fig = plt.figure(1)
ax = fig.gca()
ax.contour(xv, yv, zv)
plt.axis('equal')
plt.title('Default contour plot in 2D')

fig = plt.figure(2)
ax = fig.gca(projection='3d')
ax.contour(xv, yv, zv)
plt.axis('equal')
plt.title('Default contour plot in 3D')

fig = plt.figure(3)
ax = fig.gca()
ax.contour(xv, yv, zv, 10)
plt.axis('equal')
plt.title('Contour plot with 10 contours')

fig = plt.figure(4)
ax = fig.gca()
ax.contour(xv,yv,zv,levels=[0.1, 0.2, 0.3])
plt.axis('equal')
plt.title('contour plor with 3 specified contours')

fig = plt.figure(5)
ax = fig.gca()
levels = np.arange(.1, 1, .1)
ax.contour(xv,yv,zv,levels=levels)
plt.axis('equal')
plt.title('contour plot with 10 specified contours')



fig = plt.figure(6)
ax = fig.gca(projection='3d')
ax.plot_wireframe(xv, yv, zv)
plt.axis('equal')
plt.title('Plot using plot_wireframe')

fig = plt.figure(7)
ax = fig.gca(projection='3d')
ax.plot_surface(xv, yv, zv, cmap=cm.coolwarm, rstride=1, cstride=1)
z = np.linspace(0, 1, 50)
ax.plot(x, np.zeros(len(x)), x**2, color='r')
ax.plot(np.zeros(len(y)), y, 4*y**2, color='g')
plt.axis('equal')
plt.title('Plot with contours in other directions.')

# Eksempel 3.7.3

theta = np.linspace(0, 2*np.pi, 50)
r = np.linspace(0, 2, 50)
fig = plt.figure(8)
ax = fig.gca()
ax.plot(r,np.exp(-r**2))
plt.axis('equal')

rv, thetav = np.meshgrid(r, theta, indexing='ij', sparse=False)
fig = plt.figure(9)
ax = fig.gca(projection='3d')
ax.plot_surface(rv*np.cos(thetav),rv*np.sin(thetav), np.exp(-rv**2), cmap=cm.coolwarm, rstride=1, cstride=1)
plt.axis('equal')

# Eksempel 3.7.10

x = np.linspace(1, 3, 50)
y = np.linspace(-2, 0, 50)
xv, yv = np.meshgrid(x, y, indexing='ij', sparse=False)
fig = plt.figure(10)
ax = fig.gca(projection='3d')
ax.plot_surface(xv, yv, xv**3*yv**2, cmap=cm.coolwarm, rstride=1, cstride=1)
ax.plot_surface(xv, yv, 8 + 12*(xv - 2) - 16*(yv + 1), cmap=cm.coolwarm, rstride=1, cstride=1)

plt.show()