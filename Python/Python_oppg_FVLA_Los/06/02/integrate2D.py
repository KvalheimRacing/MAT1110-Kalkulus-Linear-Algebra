#!/usr/bin/env python

from numpy import *

def integrate2D(func, a, b, c, d, m, n):
    x = linspace(a, b, m+1)
    y = linspace(c, d, n+1)
    f = zeros((m+1,n+1))
    for i in xrange(m+1):
        for j in xrange(n+1):
            f[i, j] = func(x[i], y[j])
    I = 0
    for i in xrange(m):
        for j in xrange(n):
            I += (f[i, j] + f[i+1, j] + f[i, j+1] + f[i+1, j+1])
    I *= ((b-a)*(d-c))/(4*float(n)*float(m))
    return I

