# Oppgave 5.4.2
from numpy import *
from scitools.easyviz import *

antalliterasjoner=200
x=zeros((2,antalliterasjoner+1))
x[:,[0]]=matrix([[20],[2000]])
for n in range(antalliterasjoner):
  x[:,[n+1]]=matrix([[0.9,0.01],[-1.01,1]])*x[:,[n]]+matrix([[-10],[300]])
plot(x[[0],:],x[[1],:])