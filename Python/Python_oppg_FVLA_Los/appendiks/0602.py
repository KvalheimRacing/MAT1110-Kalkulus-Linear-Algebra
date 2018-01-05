# Oppgave 6.2
A=matrix([[2,-3,1],[4,1,-5],[1,2,-1]])
B=matrix([[-1,3,2],[4,5,1],[0,2,-1]])
C=hstack((A,B))
print C
C[:,2]=2*C[:,2]
C[[0,2],:]=4*C[[0,2],:]
print C



