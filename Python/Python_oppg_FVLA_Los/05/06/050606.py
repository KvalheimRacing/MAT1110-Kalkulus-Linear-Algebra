# Oppgave 5.6.6
from newtonfler import *

newtonfler(array([1,1,1]),\
          lambda x : array([x[0]**2+x[1]**2+x[2]**2-9,\
                            x[0]**2-x[1]**2+2*x[2]**2-1,\
                            x[0]+x[1]+10*x[2]-1]),
          lambda x : matrix([[2*x[0],2*x[1],2*x[2]],\
                             [2*x[0],-2*x[1],4*x[2]],\
                             [1,1,10]]) )
                             
newtonfler(array([-1,-1,-1]),\
          lambda x : array([x[0]**2+x[1]**2+x[2]**2-9,\
                            x[0]**2-x[1]**2+2*x[2]**2-1,\
                            x[0]+x[1]+10*x[2]-1]),
          lambda x : matrix([[2*x[0],2*x[1],2*x[2]],\
                             [2*x[0],-2*x[1],4*x[2]],\
                             [1,1,10]]) )