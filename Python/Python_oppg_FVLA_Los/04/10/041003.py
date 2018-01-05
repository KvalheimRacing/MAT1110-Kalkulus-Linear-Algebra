from numpy import *
from MAT1120lib import *

# Oppgave 4.10.3 a)
V,D=linalg.eig([[2,-1,0.5],[3,-2,1],[3,-1,2]])
print V
print D

# Oppgave 4.10.3 b)
V,D=linalg.eig([[2,0.4,10],[-2.4,7.3,0.05],[4.2,1,-3.2]])
print V
print D

# Oppgave 4.10.3 c)
V,D=linalg.eig([[3,-2,-2,4],[-5,2,-3,2],[-2,2,-8,3],[-4,1,6,4]])
print V
print D