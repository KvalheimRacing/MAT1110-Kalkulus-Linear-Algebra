# Oppgave 11.1
def f(x): return sin(x)/x
x=linspace(0.5,2,100)
y=f(x)
plot(x,y)
# integrasjon ved bruk av trapesmetoden
print trapezoidal(lambda x: sin(x)/x,0.5,2,100)

