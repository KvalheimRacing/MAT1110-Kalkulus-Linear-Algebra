from integrate2D import *

# Oppgave 6.7.6 a)
print integrate2D(lambda x,y: (x<=y)*(y<=x+5)*(-x+2<=y)*(y<=-x+4)*exp(x-y)/(x+y),-1.5,2,1,4.5,100,100)

# Oppgave 6.7.6 b)
print integrate2D(lambda x,y: x*y*(x<=y)*((1.0/x)<=y)*(y<=2*x)*(y<=(3.0/x)),0,2,0,5,100,100)

# Oppgave 6.7.6 c)
print integrate2D(lambda x,y: y*((x/2)<=y)*((1/x**2)<=y)*(y<=2*x)*(y<=(2/x**2)),(2.0**(-1.0/3.0)),(4.0**(1.0/3.0)),((2.0**(1.0/3.0))/2.0),2,100,100)

# Oppgave 7.6.7 d)
print integrate2D(lambda x,y: (3*x-2*y)*(x/2.0<=y)*((3*x-5)<=y)*(y<=3*x)*(y<=(x/2.0)+5.0/2.0),0,3,0,4,100,100)

#Oppgave 7.6.7 e)
print integrate2D(lambda x,y: x*((x-1)**2<=y)*(x**2<=y)*(y<=x**2+4)*(y<=(x-1)**2+4),-3.0/2.0,5.0/2.0,0,17.0/4.0,100,100)