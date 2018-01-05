# Oppgave 9.3 ab)
from numpy import *
from scitools.easyviz import *

x=zeros(100)
y=zeros(100)
z=zeros(100)
x[0]=300
y[0]=0
z[0]=0
for n in range(0,99):
    x[n+1]=1.5*y[n]+1.4*z[n]
    y[n+1]=0.4*x[n]
    z[n+1]=0.7*y[n]
plot(x,'g')
hold('on')
plot(y,'r')
plot(z,'b')

x=asarray(x)
y=asarray(y)
z=asarray(z)
sum=x+y+z
x2=(1.0*x)/sum
y2=(1.0*y)/sum
z2=(1.0*z)/sum
#Relativt plot
figure(2)
plot(x2,'g')
hold('on')
plot(y2,'r')
plot(z2,'b')
