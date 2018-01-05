% Oppgave 5.4.5
antalliterasjoner=200;
x=zeros(antalliterasjoner+1);
y=zeros(antalliterasjoner+1);
x(1)=0.5; % 0.1
y(1)=0.5; % 0.8
for n=1:antalliterasjoner
  x(n+1)=2.2*x(n)*(1-x(n)) + 0.01*x(n)*y(n);
  y(n+1)=3.1*y(n)*(1-y(n)) - 0.02*x(n)*y(n);
end
plot(x,y)
