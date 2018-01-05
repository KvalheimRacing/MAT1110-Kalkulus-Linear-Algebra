# Oppgave 3.1.11 b)
# Numerisk integrasjon - Simpsons metode
a=0.0
b=2*pi
punkt=100000
h=(b-a)/punkt
t=linspace(a,b,punkt)
def f(t): return sqrt(2+t**2)
sum1=f([t[0])+f(t[punkt-1])
for i in range(1,punkt,2):
  sum1+=4*f(t[i])
  if (i+1)<(punkt-1):
    sum1+=2*f(t[i+1])
print (h/3.0)*sum1