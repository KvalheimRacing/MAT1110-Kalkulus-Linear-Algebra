# Oppgave 5.1
from numpy import *
from scitools.easyviz import *

r=arange(-5,5,0.05,float)
s=arange(-5,5,0.05,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
f=(x**2)*(y**2)
g=sin(x)/(y**2) + x**2
h=sin(exp(x+y))
mesh(x,y,f)
figure(2)
mesh(x,y,g)
figure(3)
mesh(x,y,h)
