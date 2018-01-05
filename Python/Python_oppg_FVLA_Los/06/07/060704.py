from integrate2D import *

# Oppgave 6.7.3 a)
print integrate2D(lambda x,y: x*y*(x+2*y>=-1)*(x+2*y<=3)*(x-y>=1)*(x-y<=4),1.0/3,11.0/3,-5.0/3,2.0/3,100,100)

# Oppgave 6.7.3 b)
print integrate2D(lambda x,y: (x**2 - y**2)*exp(x+y)*(-x<=y)*(x<=y)*(y<=x+2)*(y<=-x+2),-1,1,0,2,100,100)

# Oppgave 6.7.3 c)
print integrate2D(lambda x,y: (y**2 - y**x)*(x<=y)*((1/x)<=y)*(y<=2*x)*(y<=(2/x)),(1/sqrt(2)),sqrt(2),1,2,100,100)


