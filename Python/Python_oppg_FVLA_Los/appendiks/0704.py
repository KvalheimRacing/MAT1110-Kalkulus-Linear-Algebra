# Oppgave 7.4
A=matrix([[0,3,-2,7,1,2,7,0],[2,0,1,-4,3,2,0,4],[-1,3,4,-1,2,-5,6,2]])
A=matrix(A,double)
A[[1,0],:]=A[[0,1],:]
k=A[2,0]/A[0,0]
A[2,:]=A[2,:]-k*A[0,:]
A[0,:]=A[0,:]/A[0,0]
k=A[2,1]/A[1,1]
A[2,:]=A[2,:]-k*A[1,:]
A[1,:]=A[1,:]/A[1,1]
k=A[1,2]/A[2,2]
A[1,:]=A[1,:]-k*A[2,:]
k=A[0,2]/A[2,2]
A[0,:]=A[0,:]-k*A[2,:]
A[2,:]=A[2,:]/A[2,2]
print A