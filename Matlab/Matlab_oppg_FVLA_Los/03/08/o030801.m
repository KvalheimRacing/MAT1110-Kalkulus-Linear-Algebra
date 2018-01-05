% Oppgave 3.8.1 a)
r=linspace(0,2*pi,30);
s=linspace(0,2*pi,30);
[x,y]=meshgrid(r,s);
u=cos(x);
v=sin(x);
figure(8)
quiver(x,y,u,v);
title('Oppgave 3.8.1a');
figure(9)
streamline(x,y,u,v,0,1);
hold on
streamline(x,y,u,v,0,0.5);
title('Oppgave 3.8.1a');
hold off

% Oppgave 3.8.1 b)
r=linspace(-0.3,0.3,30);
s=linspace(-0.3,0.3,30);
[x,y]=meshgrid(r,s);
u=-x./(x.^2+y.^2).^(3/2);
v=-y./(x.^2+y.^2).^(3/2);
figure(10)
quiver(x,y,u,v)
title('Oppgave 3.8.1b');
figure(11)
streamline(x,y,u,v,-0.3,0.3);
hold on
streamline(x,y,u,v,0.3,0.3);
title('Oppgave 3.8.1b');
hold off

% Oppgave 3.8.1 c)
r=linspace(-2,2,30);
s=linspace(-1,1,30);
[x,y]=meshgrid(r,s);
u=(1-x)./((x-1).^2+y.^2) + (1+x)./((x+1).^2+y.^2);
v=-y./((x-1).^2+y.^2) + y./((x+1).^2 + y.^2);
figure(12)
quiver(x,y,u,v)
title('Oppgave 3.8.1c');
figure(13)
streamline(x,y,u,v,1.5,1);
hold on
streamline(x,y,u,v,0.5,1);
title('Oppgave 3.8.1c');
hold off
