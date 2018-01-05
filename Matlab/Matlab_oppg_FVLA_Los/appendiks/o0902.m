% Oppgave 9.2
x=zeros(1,1000);
y=zeros(1,1000);
r=0.98;
q=1.04;
c=0.0002;
d=0.001;
x(1)=50;
y(1)=200;
for k=2:1000
  x(k) = x(k-1)*(r+c*y(k-1));
  y(k) = y(k-1)*(q-d*x(k-1));
end
plot(1:1000,x,1:1000,y)
