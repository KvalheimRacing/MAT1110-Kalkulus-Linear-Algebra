# Oppgave 5.4.4
from numpy import *
from scitools.easyviz import *

antalliterasjoner=200
x=zeros(antalliterasjoner+1)
y=zeros(antalliterasjoner+1)
x[0]=8
y[0]=12
for n in range(antalliterasjoner):
  x[n+1]=1.01*(x[n]+y[n])/2
  y[n+1]=min(x[n],1.1*y[n])
plot(x,y)

figure(2)
x[0]=12
y[0]=8
for n in range(antalliterasjoner):
  x[n+1]=1.01*(x[n]+y[n])/2
  y[n+1]=min(x[n],1.1*y[n])
plot(x,y)