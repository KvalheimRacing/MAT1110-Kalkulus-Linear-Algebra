%% Eksempel 3.8.1
x = -5:0.5:5;
y = -3:0.5:3;
[xv,yv] = meshgrid(x,y);
u = xv.*yv;
v = xv.* sin(xv.*yv);
figure(1)
quiver(xv, yv, u, v)
hold on

x = -5:0.01:5;
y = -3:0.01:3;
[xv,yv] = meshgrid(x,y);
u = xv.*yv;
v = xv.* sin(xv.*yv);
streamline(xv, yv, u, v, 2, 1);
streamline(xv, yv, u, v, 4, -2);
axis equal

%% Seksjon 3.9
figure(2)
u=linspace(0,2*pi,50);
v = u;
[uv,vv] = meshgrid(u,v);
r=2;
R= 5;
surf((R+r*cos(uv)).*cos(vv), (R+r*cos(uv)).*sin(vv), r*sin(uv));
axis equal

%% Eksempel 3.9.2
figure(3)
phi = linspace(0, pi, 100);
theta = linspace(0, 2*pi, 200);
[phiv, thetav] = meshgrid(phi, theta);
surf(3*sin(phiv).*cos(thetav), 3*sin(phiv).*sin(thetav), 3*cos(phiv))
axis equal