% Oppgave 5.4.7
antalliterasjoner=30;
x=zeros(antalliterasjoner+1);
x(1)=sqrt(2);
x(1)
for n=1:antalliterasjoner
  x(n+1)=x(n)^2+x(n)-2;
  x(n+1)
end
