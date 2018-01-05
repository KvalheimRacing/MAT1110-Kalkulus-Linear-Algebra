% Oppgave 9.3 ab)
x=zeros(100);
y=zeros(100);
z=zeros(100);
x(1)=300;
y(1)=0;
z(1)=0;
for n=1:99
    x(n+1)=1.5*y(n)+1.4*z(n);
    y(n+1)=0.4*x(n);
    z(n+1)=0.7*y(n);
end
plot(x,'g')
hold on
plot(y,'r')
plot(z,'b')

sum=x+y+z;
x2=x./sum;
y2=y./sum;
z2=z./sum;
% relativt plot
figure(2)
plot(x2,'g')
hold on
plot(y2,'r')
plot(z2,'b')
