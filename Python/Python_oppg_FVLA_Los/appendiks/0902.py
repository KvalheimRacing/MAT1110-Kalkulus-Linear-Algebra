# Oppgave 9.2 b)
r=0.98
q=1.04
c=0.0002
d=0.001
x=zeros(1001)
y=zeros(1001)
x[0]=50
y[0]=200
for n in range(0,999):
    x[n+1]=x[n]*(r+c*y[n])
    y[n+1]=y[n]*(q-d*x[n])
t=range(0,1001,1)
plot(t,x,'g')
hold('on')
plot(t,y,'r')


