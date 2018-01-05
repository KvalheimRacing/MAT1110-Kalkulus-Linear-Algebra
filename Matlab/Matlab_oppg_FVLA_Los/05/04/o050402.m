% Oppgave 5.4.2
antalliterasjoner=200;
x=zeros(2,antalliterasjoner+1);
x(:,1)=[20;2000];
for n=1:antalliterasjoner
  x(:,n+1)=[0.9 0.01; -1.01 1]*x(:,n)+[-10; 300];
end
plot(x(1,:),x(2,:))
