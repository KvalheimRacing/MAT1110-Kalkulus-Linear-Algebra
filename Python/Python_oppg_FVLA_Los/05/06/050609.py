# Oppgave 5.6.9
xfit=-0.5
print xfit
xn=-0.5
print xn
for k in range(10):
  xfit=xfit**3+3*xfit+1
  print xfit
  xn=((3*xn**2+3)*xn-(xn**3+3*xn+1))/(3*xn**2+3-1)
  print xn