% Oppgave 5.1
r=linspace(-2,2,100);
s=linspace(-2,2,100);
[x,y]=meshgrid(r,s);
f=(x.^2) .* (y.^2);
g=sin(x)./(y.^2)+x.^2;
h=sin(exp(x+y));

mesh(x,y,f);
figure(2)
mesh(x,y,g);
figure(3)
mesh(x,y,h);
