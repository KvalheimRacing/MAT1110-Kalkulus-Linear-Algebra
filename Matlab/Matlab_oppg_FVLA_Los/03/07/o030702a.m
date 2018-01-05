% Oppgave 3.7.2 a)
r=-2:0.05:2;
s=-2:0.05:2;
[x,y]=meshgrid(r,s);
z=2*x.^2+y.^2;
mesh(x,y,z);
title('Oppgave 3.7.2a')