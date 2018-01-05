% Oppgave 3.7.2 e)
r=-5:0.05:5;
s=-5:0.05:5;
[x,y]=meshgrid(r,s);
figure(5);
z=log(x.*y);
mesh(x,y,z);
title('Oppgave 3.7.2e');