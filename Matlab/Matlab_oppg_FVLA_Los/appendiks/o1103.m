% Oppgave 11.3
f=inline('x.^2.*y-y.^2');
r=linspace(-1,1,50);
s=linspace(-1,1,50);
[x,y]=meshgrid(r,s);
mesh(x,y,f(x,y));
