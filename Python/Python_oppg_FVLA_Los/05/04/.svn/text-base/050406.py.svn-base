# Oppgave 5.4.6 b)
N = 50
a=0.02
b=0.03
x=zeros((2,N))
x[:,[0]]=matrix([[10],[12]])
for n in range(N-1):
    x[[0],[n+1]]=1.1*x[[1],[n]]/(1+a*x[[1],[n]])
    x[[1],[n+1]]=1.1*x[[0],[n]]/(1+b*x[[0],[n]])
plot(x[0,:])
hold('on')
plot(x[1,:],'g')
	
	
	

