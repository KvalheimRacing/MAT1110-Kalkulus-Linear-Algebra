#Oppgave 10.3
def ledd(a,b,c,d,m):
    x=zeros(m)
    x[0]=c
    x[1]=d
    for n in range(0,m-2):
        x[n+2]=a*x[n+1]+b*x[n]
    return x



