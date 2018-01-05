from integrate2D import *

# Oppgave 6.7.2 a)
print integrate2D(lambda x,y: x**2*(x<=y)*(y<=x+1)*(-x<=y)*(y<=-x+2),-0.5,1,0,1.5,100,100)

# Oppgave 6.7.2 b)
print integrate2D(lambda x,y: x*(y<=x)*(x-3<=y),0,4,0,1,100,100)

# Oppgave 6.7.2 c)
print integrate2D(lambda x,y: x*y*(y<=2*x)*(y<=(x/2)+2)*(2*x-2<=y)*(x/2<=y),0,8.0/3,0,10.0/3,100,100)



