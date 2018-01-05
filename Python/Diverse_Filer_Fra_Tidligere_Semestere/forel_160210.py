import os
from math import *
import numpy as np

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm

# Eksempel 3.8.1

x = np.arange(-5., 5., .5)
y = np.arange(-3., 3., .5)
xv, yv = np.meshgrid(x, y, indexing='ij', sparse=False)
u = xv*yv
v = xv*np.sin(xv*yv)
fig = plt.figure(1)
ax = fig.gca()
ax.quiver(xv, yv, u, v)

x = np.arange(-5., 5., .01)
y = np.arange(-3., 3., .01)
xv,yv = np.meshgrid(x, y)
u = xv*yv
v = xv*np.sin(xv*yv)
plt.streamplot(xv, yv, u, v)
plt.axis('equal')

# Seksjon 3.9

fig = plt.figure(2)
u = v = np.linspace(0, 2*pi, 50)
uv, vv = np.meshgrid(u, v, indexing='ij', sparse=False)
r = 2
R = 5
ax = fig.gca(projection='3d')
ax.plot_surface((R + r*np.cos(uv))*np.cos(vv), (R + r*np.cos(uv))*np.sin(vv), r*np.sin(uv), cmap=cm.coolwarm, rstride=1, cstride=1)
plt.axis('equal')

# Eksempel 3.9.2

fig = plt.figure(3)
phi = np.linspace(0, pi, 100)
theta = np.linspace(0, 2*np.pi, 200)
phiv, thetav = np.meshgrid(phi, theta, indexing='ij', sparse=False)
ax = fig.gca(projection='3d')
ax.plot_surface(3*np.sin(phiv)*np.cos(thetav), 3*np.sin(phiv)*np.sin(thetav), 3*np.cos(phiv), cmap=cm.coolwarm, rstride=1, cstride=1)
plt.axis('equal')


plt.show()