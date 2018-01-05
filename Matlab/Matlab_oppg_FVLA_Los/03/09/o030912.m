% Oppgave 3.9.12
u=linspace(0,2*pi,100);
v=linspace(0,2,100);
[U,V]=meshgrid(u,v);
x=3*cos(U);
y=3*sin(U);
z=V;
surf(x,y,z)
axis('equal')
title('Oppgave 3.9.12')

a=1;
b=0.5;
c=0.1;
u=linspace(0,2*pi,100);
v=linspace(0,pi,100);
[U,V]=meshgrid(u,v);
x=sin(V).*cos(U)*a;
y=sin(V).*sin(U)*b;
z=cos(V)*c;
surf(x,y,z)
axis('equal')
title('Oppgave 3.9.12')

