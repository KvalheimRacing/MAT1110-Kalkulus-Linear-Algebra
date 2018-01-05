%Oppgave 3.9.14

% Definere radius-parameterne
r=3;
R=5;

% Bruker eksempel på s. 195-196.

% Vet at u og v skal være mellom 0 og 2pi
u=linspace(0,2*pi,100);
v=linspace(0,2*pi,100);

% Lager grid
[U,V]=meshgrid(u,v);

% Definerer parametriseringen
x=(R + r.*cos(U)).*cos(V);
y=(R + r.*cos(U)).*sin(V);
z=r.*sin(U);

% Plotter
surf(x,y,z)
axis('equal')
