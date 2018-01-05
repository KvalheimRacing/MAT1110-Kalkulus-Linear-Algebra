%% Example 3.7.1
x=linspace(-1,1,50);
y=x;
[xv,yv]=meshgrid(x,y);
zv = xv.^2 + 4*yv.^2;

figure(1)
contour(xv,yv,zv)
axis equal
title('Default contour plot in 2D')

figure(2)
contour3(xv,yv,zv)
axis equal
title('Default contour plot in 3D')

figure(3)
contour(xv,yv,zv,10)
axis equal
title('Contour plot with 10 contours')

figure(4)
contour(xv,yv,zv,[0.1 0.2 0.3])
axis equal
title ('contour plor with 3 specified contours')

figure(5)
contour(xv,yv,zv,0.1:0.1:1)
axis equal
title('contour plot with 10 specified contours')

figure(6)
mesh(xv,yv,zv)
axis equal
title('Plot using mesh')

figure(7)
surf(xv,yv,zv)
hold on
z = linspace(0,1,50);
plot3(x,zeros(length(x),1),x.^2,'r')
plot3(zeros(length(y),1),y,4*y.^2,'g')
axis equal
title('Plot with contours in other directions.')

%% Eksempel 3.7.3
theta = linspace(0,2*pi,50);
r = linspace(0,2,50);
figure(8)
plot(r,exp(-r.^2))
axis equal

[rv,thetav] = meshgrid(r,theta);
figure(9)
surf(rv.*cos(thetav),rv.*sin(thetav), exp(-rv.^2))
axis equal

%% Eksempel 3.7.10
x = linspace(1,3,50);
y = linspace(-2,0,50);
[xv,yv] = meshgrid(x,y);
figure(10)
surf(xv, yv, xv.^3.* yv.^2);
hold on
surf(xv, yv, 8 + 12*(xv - 2) - 16*(yv + 1))
