# Oppgave 2.3
A=matrix([[1,2,-1],[3,-1,0],[-4,0,2]])
print linalg.inv(A)
print A.T
print linalg.det(A)
D,V=linalg.eig(A)
print D
print V

