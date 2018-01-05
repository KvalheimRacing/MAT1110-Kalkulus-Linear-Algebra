# Oppgave 5.4.1
N = 500
x=zeros((2,N))
x[:,[0]]=matrix([[0],[0]])
for n in range(N-1):
    x[:,[n+1]]=matrix([[0.6,-0.6],[0.6,0.6]])*x[:,[n]] + matrix([[0.2],[1]])
plot(x[[0],:],x[[1],:])
	
	
	

