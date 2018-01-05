% Oppgave 5.4.4
antalliterasjoner=200;
x=zeros(antalliterasjoner+1);
y=zeros(antalliterasjoner+1);

x(1)=8;  % 12
y(1)=12; % 8
for n=1:antalliterasjoner
  x(n+1)=1.01*(x(n)+y(n))/2;
  y(n+1)=min(x(n),1.1*y(n));
end
plot(x,y)

figure(2)
x(1)=12;
y(1)=8;
for n=1:antalliterasjoner
  x(n+1)=1.01*(x(n)+y(n))/2;
  y(n+1)=min(x(n),1.1*y(n));
end
plot(x,y)
