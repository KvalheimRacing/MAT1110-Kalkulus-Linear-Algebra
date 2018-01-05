% Oppg. 3.7: 3a

% Lager jevnt fordelte punkter
t=linspace(-2,2,100);
s=linspace(-2,2,100);

% Lager grid
[x,y]=meshgrid(t,s);

% Definerer funksjonen
z=1./sqrt(x.^2 + y.^2);

% Plotter
mesh(x,y,z)
