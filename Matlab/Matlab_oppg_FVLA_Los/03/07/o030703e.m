% Oppgave 3.7.3 e)
u=-1:0.05:1;
v=-1:0.05:1;
[x,y]=meshgrid(u,v);
figure(5)
z=exp(x.*y)
mesh(x,y,z)
title('Oppgave 3.7.3e')