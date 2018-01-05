# Oppgave 2.1
from numpy import *

A=matrix([[1,3,4,6],[-1,1,3,-5],[2,-3,1,6],[2,3,-2,1]])
B=matrix([[2,2,-1,4],[2,-1,4,6],[2,3,2,-1],[-1,4,-2,5]])
print A.T
print B.T
print (A*B).T
print (A.T)*(B.T)
print (B.T)*(A.T)
print linalg.inv(A)
print linalg.inv(B)
print linalg.inv(A*B)
print linalg.inv(A)*linalg.inv(B)
print linalg.inv(B)*linalg.inv(A)



