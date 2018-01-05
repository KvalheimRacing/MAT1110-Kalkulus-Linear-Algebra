% Oppgave 5.6.9 c) og d)
xfit=-0.5
xn=-0.5
for k=1:10
  xfit=xfit^3+3*xfit+1
  xn=((3*xn^2+3)*xn-(xn^3+3*xn+1))/(3*xn^2+3-1)
end
