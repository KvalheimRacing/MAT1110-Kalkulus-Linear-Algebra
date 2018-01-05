% vektorfelt i R^3
% (u,v,w) = F(x,y,z) = (y,z,x)

[x y z] = ndgrid(0:0.25:1, 0:0.25:1, 0:0.25:1);
u = y; v = z; w = x;
quiver3(x,y,z,u,v,w)
xlabel('x-akse')
ylabel('y-akse')
zlabel('z-akse')

clear

% vektorfelt i R^2
% (u,v) = F(x,y) = (-y,x)

xd = 0:0.1:1; yd = 0:0.1:1;
[x y] = meshgrid(xd,yd);
u = -y; v = x;
quiver(x,y,u,v)
xlabel('x-akse')
ylabel('y-akse')

% strømlinjer som begynner i (1,0), (0.5,0) og (0.5,0.5)

streamline(x,y,u,v,1,0)
streamline(x,y,u,v,0.5,0)
streamline(x,y,u,v,0.5,0.5)

clear

% rutenett i R^2
% (z=0 for å bruke 3d-plott)

[x y] = meshgrid(0:0.1:1, 0:0.1:1);
z = 0.*x;
mesh(x,y,z)
xlabel('x-akse')
ylabel('y-akse')

figure

% bilde av rutenettet under
% F(x,y) = (x, (x^2+1)y)

mesh(x, (x.^2+1).*y, z)
xlabel('x-akse')
ylabel('y-akse')

figure

% bilde av rutenettet under
% F(x,y) = (x^3, (x^2+1)y)

mesh(x.^3, (x.^2+1).*y, z)
xlabel('x-akse')
ylabel('y-akse')

diary off
