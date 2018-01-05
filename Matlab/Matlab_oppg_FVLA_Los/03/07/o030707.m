% Oppgave 3.7.7
r=-5:0.01:5;
s=-5:0.01:5;
[x,y]=meshgrid(r,s);
z=((x.^3).*y-x.*(y.^3))./((x.^2 + y.^2).^2);
mesh(x,y,z);
title('Oppgave 3.7.7')
figure(2)
contour(x,y,z);
title('Oppgave 3.7.7')

