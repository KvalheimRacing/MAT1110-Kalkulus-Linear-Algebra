#Oppgave 10.2
# coding=utf-8
from oppg101 import *
from numpy import *

def oppg102(a,b,c,d,e,f):
  determinant = oppg101(a,b,c,d)
  if determinant !=0:
    v = linalg.solve( matrix([[a,b],[c,d]]) , matrix([[e],[f]]) )
    return v[0,0],v[1,0]
  else:
    print 'Likningssettet har ikke entydig løsning'


