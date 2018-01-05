# Oppgave 4.3
from numpy import *
from scitools.easyviz import *

x=linspace(-1,1,100)
f=x**3 - 1
g=3*x**2
plot(x,f,'g')
hold('on')
plot(x,g,'r')



