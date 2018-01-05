# Oppgave 9.1
a=zeros(30)
a[0]=1
a[1]=3
for n in range(0,28):
    a[n+2]=3*a[n+1]-2*a[n]

