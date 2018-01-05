% Oppgave 5.9.20 c)
u=linspace(-3,3,100);
v=linspace(-3,3,100);
[x,y]=meshgrid(u,v);
f=1 - x.^2 - ((1+x).^3).*(y.^3);
mesh(x,y,f)

% Oppgave 5.9.20 f)
g=4*(x.^2).*exp(y) - 2*x.^4 - exp(4*y);
figure(2)
mesh(x,y,g)
