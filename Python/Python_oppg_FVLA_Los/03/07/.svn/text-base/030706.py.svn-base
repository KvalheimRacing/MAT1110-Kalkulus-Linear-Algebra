from math import *
from numpy import *
from scitools.easyviz import *

# Oppgave 3.7.6
r=arange(-2,2,0.02,float)
s=arange(-2,2,0.02,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
z=x**2*y/(x**2+y**2)
figure(6)
mesh(x,y,z)
hold('on')
t=linspace(0,2,100)
plot3(t,t**2,0.5*ones(100))
title('Oppgave 3.7.6')
hold('off')
figure(7)
contour(x,y,z)
title('Oppgave 3.7.6')
contour(x,y,z,[0.5,0.5])
title('Oppgave 3.7.6')