% Oppgave 3.7.3 c)
u=-0.5:0.03:0.5;
v=-0.5:0.03:0.5;
[x,y]=meshgrid(u,v);
z=y./x;
figure(3)
mesh(x,y,z)
title('Oppgave 3.7.3c')