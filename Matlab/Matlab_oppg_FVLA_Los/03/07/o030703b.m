% Oppgave 3.7.3 b)
u=-0.5:0.03:0.5;
v=-0.5:0.03:0.5;
[x,y]=meshgrid(u,v);
z=x./(x.^2 + y.^2)
figure(2)
mesh(x,y,z)
title('Oppgave 3.7.3b')