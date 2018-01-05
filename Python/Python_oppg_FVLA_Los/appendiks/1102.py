# Oppgave 11.2
g=lambda x: sin(x)/x
x=linspace(0.5,2,100)
y=g(x)
plot(x,y)
print trapezoidal(g,0.5,2,100)

