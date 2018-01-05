# Oppgave 5.5.1
from oppg050501 import *
from numpy import *
from scitools.easyviz import *

# b)
x,y=oppg050501(1,-1,30)
plot(x,y)
axis([-1,1,-1,1])

# c)
figure(2)
for k in range(6):
  x1=5*random.rand()-2.5
  y1=5*random.rand()-2.5
  x,y=oppg050501(x1,y1,30)
  subplot(2,3,k+1)
  plot(x,y)
  axis([-1,1,-1,1])