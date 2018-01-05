from numpy import *
from scitools.easyviz import *

def oppg050501(x1,y1,antalliterasjoner):
  x=zeros(antalliterasjoner+1)
  y=zeros(antalliterasjoner+1)
  x[0]=x1
  y[0]=y1

  for n in range(antalliterasjoner):
    x[n+1]=0.5*sin(x[n]+y[n])
    y[n+1]=0.5*cos(x[n]-y[n])
  return x,y