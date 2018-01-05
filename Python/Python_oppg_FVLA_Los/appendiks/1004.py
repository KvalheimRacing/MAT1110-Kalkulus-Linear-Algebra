#Oppgave 10.4
def ledd2(a,b,m):
    x=zeros(m)
    x[0]=b
    for n in range(0,m-1):
        x[n+1]=a*x[n]*(1-x[n])
    return x

    
