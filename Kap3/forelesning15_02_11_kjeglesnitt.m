xd = linspace(-3,3,61);
yd = xd;
[x,y] = meshgrid(xd,yd);
z = sqrt(x.^2+y.^2);

surf(x,y,z)
hold on
surf(x,y,-z)
e = 0.5*x+1;
mesh(x,y,e)

figure
surf(x,y,z)
hold on
surf(x,y,-z)
p = x+1;
mesh(x,y,p)

figure
surf(x,y,z)
hold on
surf(x,y,-z)
h = 2*x+1;
mesh(x,y,h)
