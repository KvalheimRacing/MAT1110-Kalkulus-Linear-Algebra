% parametrisering av sfæren som to grafer
% z = +/- sqrt(1-x^2-y^2)

[x y] = meshgrid(-1:0.1:1, -1:0.1:1);
% bruker max for å omgå imaginære røtter
z = sqrt(max(1-x.^2-y.^2,0));

mesh(x,y,z)
hold on
mesh(x,y,-z)
xlabel('x-akse')
ylabel('y-akse')
zlabel('z-akse')

% parametrisering av sfæren ved kulekoordinater
% (rho, phi, theta) med rho=1
% u = phi, v = theta

figure

ud = linspace(0,pi,19);
vd = linspace(0,2*pi,37);
[u,v] = meshgrid(ud, vd);
x = sin(u).*cos(v);
y = sin(u).*sin(v);
z = cos(u);

mesh(x,y,z)
xlabel('x-akse')
ylabel('y-akse')
zlabel('z-akse')

diary off
