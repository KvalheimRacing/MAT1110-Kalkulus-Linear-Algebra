from math import *
from numpy import *
from scitools.easyviz import *

# Oppgave 3.8.3 a) 
r=arange(-2,2,0.25,float) # lager oppdeling av x-aksen
s=arange(-2,2,0.25,float) # lager oppdeling av y-aksen
x,y=meshgrid(r,s,sparse=False,indexing='ij')
u=3*x-y
v=x+2*y
figure(14)
plot(u,v,u.T,v.T) 
title('Oppgave 3.8.3a')

# Oppgave 3.8.3 b)
r=arange(0,5,0.25,float)
s=arange(0,2*pi,0.25,float)
x,y=meshgrid(r,s,sparse=False,indexing='ij')
u = x*cos(y)
v = x*sin(y)
figure(15)
plot(u,v,u.T,v.T)
title('Oppgave 3.8.3b')

# Oppgave 3.8.3 c)
u=sqrt(x/y)
v=sqrt(x*y)
figure(16)
plot(u,v,u.T,v.T)
title('Oppgave 3.8.3c')